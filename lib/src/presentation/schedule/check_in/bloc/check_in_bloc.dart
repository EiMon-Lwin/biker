import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:dialog_api/dialog_api.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geo_locator/domain/usecases/get_distance_meters_between.dart';
import 'package:geo_locator/geo_locator.dart';
import 'package:geo_locator_api/geo_locator_api.dart';
import 'package:image_picker_api/image_picker_api.dart';
import 'package:latlong2/latlong.dart' as lat_lng_2;

import 'package:biker_info/application/biker_info_application.dart';
import 'package:localization_api/localization_api.dart';
import 'package:resource_strings/resource_strings.dart';
import 'package:schedule/domain/usecases/check_in_schedule.dart';

part 'check_in_bloc.freezed.dart';
part 'check_in_event.dart';
part 'check_in_state.dart';

extension LatLngExtension on LatLng {
  lat_lng_2.LatLng toLatLng() {
    return lat_lng_2.LatLng(lat, long);
  }
}

class CheckInPageBloc extends Bloc<CheckInEvent, CheckInPageState> {
  final LocalizationApi localization;
  final ResourceStrings resourceStrings;
  final DialogApi dialogApi;
  final MapController mapController;
  final BikerInfoBloc bikerInfoBloc;
  final GeoLocatorBloc geoLocatorBloc;
  final ImagePickerApi imagePicker;
  final GetDistanceMetersBetweenUseCase getDistanceMetersBetween;
  final CheckInScheduleUseCase checkInScheduleUseCase;

  CheckInPageBloc(
    this.mapController,
    this.dialogApi,
    this.localization,
    this.resourceStrings,
    this.geoLocatorBloc,
    this.bikerInfoBloc,
    this.imagePicker,
    this.getDistanceMetersBetween,
    this.checkInScheduleUseCase,
  ) : super(CheckInPageState(status: CheckInPageStateStatus.loading)) {
    on<_Started>(_onStarted);
    on<_UpdateUserLocation>(_onUpdateUserLocation);
    on<_LoadAssemblyLatLng>(_onLoadAssemblyLatLng);
    on<_UpdateAssemblyLatLng>(_onUpdateAssemblyLatLng);
    on<_LocateButtonPressed>(_onLocateButtonPressed);
    on<_AddImageButtonPressed>(_onAddImageButtonPressed);
    on<_RemoveSelectedImage>(_onRemoveSelectedImage);
    on<_OnCheckInButtonPressed>(_onCheckInButtonPressed);
    on<_OnMapReady>(_onMapReady);
    _geoLocatorSubscription = geoLocatorBloc.stream.listen(_onGeoLocatorEvent);
    _bikerInfoSubscription = bikerInfoBloc.stream.listen(_onBikerInfoEvent);

    geoLocatorBloc.add(const GeoLocatorEvent.startLocationStream());
  }

  StreamSubscription<GeoLocatorState>? _geoLocatorSubscription;
  StreamSubscription<BikerInfoState>? _bikerInfoSubscription;

  @override
  Future<void> close() async {
    await _geoLocatorSubscription?.cancel();
    await _bikerInfoSubscription?.cancel();
    mapController.dispose();
    await super.close();
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<CheckInPageState> emit,
  ) async {
    geoLocatorBloc.add(const GeoLocatorEvent.startLocationStream());
    _onBikerInfoEvent(bikerInfoBloc.state);
  }

  void _onGeoLocatorEvent(GeoLocatorState event) {
    if (event.isStreaming &&
        event.currentLatLng != null &&
        event.currentLatLng != state.userLatLng) {
      add(_UpdateUserLocation(event.currentLatLng!));
    }
  }

  FutureOr<void> _onUpdateUserLocation(
    _UpdateUserLocation event,
    Emitter<CheckInPageState> emit,
  ) async {
    // ignore: prefer_const_declarations
    final currentDistance = 10;
    state.assemblyLatLng != null && state.userLatLng != null
        ? getDistanceMetersBetween(GetDistanceMetersBetweenParams(
            firstPoint: state.assemblyLatLng!,
            secondPoint: state.userLatLng!,
          ))
        : null;

    emit(state.copyWith(
      userLatLng: event.latLng,
      currentDistance: currentDistance == null ? null : currentDistance / 1000,
      isWithin: currentDistance < 30,
    ));
    await _updateFocus();
  }

  Future<void> _updateFocus() async {
    if (state.assemblyLatLng == null || !state.isMapReady) return;
    final centerZoom = mapController.centerZoomFitBounds(
        LatLngBounds(
          state.assemblyLatLng!.toLatLng(),
          state.userLatLng?.toLatLng() ?? state.assemblyLatLng!.toLatLng(),
        ),
        options: const FitBoundsOptions(padding: EdgeInsets.all(20.0)));

    mapController.move(centerZoom.center, centerZoom.zoom);
  }

  FutureOr<void> _onLoadAssemblyLatLng(
    _LoadAssemblyLatLng event,
    Emitter<CheckInPageState> emit,
  ) async {
    bikerInfoBloc.add(GetBikerInfoEvent());
  }

  void _onBikerInfoEvent(BikerInfoState event) async {
    final location = _latLngFromBikerInfoState(event);
    if (location != null) {
      add(CheckInEvent.updateAssemblyLatLng(
        location,
      ));
    }
  }

  LatLng? _latLngFromBikerInfoState(BikerInfoState event) {
    if (event is BikerInfoReady) {
      return LatLng(
        event.bikerInfo.assemblyLat.toDouble(),
        event.bikerInfo.assemblyLong.toDouble(),
      );
    }
    return null;
  }

  FutureOr<void> _onUpdateAssemblyLatLng(
    _UpdateAssemblyLatLng event,
    Emitter<CheckInPageState> emit,
  ) async {
    emit(state.copyWith(
      status: CheckInPageStateStatus.ready,
      assemblyLatLng: event.latLng,
    ));
  }

  FutureOr<void> _onLocateButtonPressed(
    _LocateButtonPressed event,
    Emitter<CheckInPageState> emit,
  ) async =>
      await _updateFocus();

  FutureOr<void> _onAddImageButtonPressed(
    _AddImageButtonPressed event,
    Emitter<CheckInPageState> emit,
  ) async {
    final file = await imagePicker.pickCameraImage(
      maxWidth: 720.0,
    );
    if (file == null) return;

    emit(state.copyWith(selctedImageFile: File(file.path)));
  }

  FutureOr<void> _onRemoveSelectedImage(
    _RemoveSelectedImage event,
    Emitter<CheckInPageState> emit,
  ) async {
    emit(CheckInPageState(
      status: state.status,
      userLatLng: state.userLatLng,
      assemblyLatLng: state.assemblyLatLng,
      selctedImageFile: null,
      currentDistance: state.currentDistance,
      isWithin: state.isWithin,
      isMapReady: state.isMapReady,
    ));
  }

  FutureOr<void> _onMapReady(
      _OnMapReady event, Emitter<CheckInPageState> emit) async {
    emit(state.copyWith(
      isMapReady: true,
    ));
  }

  FutureOr<void> _onCheckInButtonPressed(
    _OnCheckInButtonPressed event,
    Emitter<CheckInPageState> emit,
  ) async {
    final path = state.selctedImageFile?.path;
    if (path == null) {
      dialogApi.showSnackBar(
        message: localization.tr(resourceStrings.lblAddImage),
        actionButtonLabel: localization.tr(resourceStrings.btnClose),
        onActionButtonTap: dialogApi.clearSnacks,
      );
      return;
    }

    emit(state.copyWith(
      status: CheckInPageStateStatus.submitting,
    ));

    await checkInScheduleUseCase(CheckInScheduleParams(
      filePath: state.selctedImageFile!.path,
    ))
      ..onSuccess((data) {
        bikerInfoBloc.add(GetBikerInfoEvent());
        emit(state.copyWith(
          status: CheckInPageStateStatus.success,
        ));
      })
      ..onError((error) async {
        emit(state.copyWith(
          status: CheckInPageStateStatus.failed,
        ));

        if (error is HttpStatusException && error.metaMessage != null) {
          await dialogApi.showSnackBar(
              message: error.metaMessage!,
              actionButtonLabel: localization.tr(resourceStrings.btnClose),
              onActionButtonTap: dialogApi.clearSnacks);
        }
      });
  }
}
