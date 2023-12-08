import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geo_locator/domain/usecases/get_current_location.dart';
import 'package:geo_locator/domain/usecases/get_location_enabled.dart';
import 'package:geo_locator/domain/usecases/get_location_stream.dart';
import 'package:geo_locator/domain/usecases/get_permission_status.dart';
import 'package:geo_locator_api/geo_locator_api.dart';

import '../../domain/usecases/open_location_settings.dart';
import '../../domain/usecases/request_permission.dart';

part 'geo_locator_event.dart';
part 'geo_locator_state.dart';
part 'geo_locator_bloc.freezed.dart';

class GeoLocatorBloc extends Bloc<GeoLocatorEvent, GeoLocatorState> {
  final GetPermissionStatusUseCase getPermissionStatusUseCase;
  final GetCurrentLocationUseCase getCurrentLocationUseCase;
  final GetLocationEnabledUseCase getLocationEnabledUseCase;
  final OpenLocationSettingUseCase openLocationSettingUseCase;
  final RequestPermissionUseCase requestPermissionUseCase;
  final GetLocationStreamUseCase getLocationStreamUseCase;

  GeoLocatorBloc(
    this.getPermissionStatusUseCase,
    this.getCurrentLocationUseCase,
    this.getLocationEnabledUseCase,
    this.openLocationSettingUseCase,
    this.requestPermissionUseCase,
    this.getLocationStreamUseCase,
  ) : super(GeoLocatorState(
          isLocationTurnOn: false,
          isPermissionEnabled: false,
        )) {
    on<CheckLocationEnabledEvent>(_onCheckLocationEnabledEvent);
    on<CheckLocationPermissionEvent>(_onCheckLocationPermission);
    on<RequestLocationPermission>(_onRequestLocationPermission);
    on<OpenLocationSetting>(_onOpenLocationSettingEvent);
    on<StartLocationStream>(_onStartLocationStream);
    on<StopLocationStream>(_onStopLocationStream);
    on<GetCurrentLocation>(_onGetCurrentLocation);
    on<RecievedLocation>(_onRecievedLocation);
  }

  Future<void> _onCheckLocationEnabledEvent(
    CheckLocationEnabledEvent event,
    Emitter<GeoLocatorState> emit,
  ) async {
    await getLocationEnabledUseCase()
      ..onSuccess((data) {
        emit(state.copyWith(
          isLocationTurnOn: data,
        ));
      })
      ..onError((error) {});
  }

  Future<void> _onCheckLocationPermission(
    CheckLocationPermissionEvent event,
    Emitter<GeoLocatorState> emit,
  ) async {
    await getPermissionStatusUseCase()
      ..onSuccess((permissionStatus) {
        final hasPermission =
            permissionStatus == LocationPermissionStatus.always ||
                permissionStatus == LocationPermissionStatus.whileInUse;

        emit(state.copyWith(
          isPermissionEnabled: hasPermission,
        ));
      })
      ..onError((error) {});
  }

  Future<void> _onRequestLocationPermission(
    RequestLocationPermission event,
    Emitter<GeoLocatorState> emit,
  ) async {
    await requestPermissionUseCase()
      ..onSuccess((data) {
        add(GeoLocatorEvent.checkLocationPermission());
      })
      ..onError((e) {});
  }

  Future<void> _onOpenLocationSettingEvent(
    OpenLocationSetting event,
    Emitter<GeoLocatorState> emit,
  ) async {
    await openLocationSettingUseCase()
      ..onSuccess((data) {
        add(GeoLocatorEvent.checkLocationEnabled());
      })
      ..onError((error) {});
  }

  StreamSubscription<LatLng>? _subscription;

  void _onStartLocationStream(
    StartLocationStream event,
    Emitter<GeoLocatorState> emit,
  ) {
    emit(state.copyWith(
      isStreaming: true,
    ));

    _subscription = getLocationStreamUseCase().listen((location) {
      if(location != state.currentLatLng) {
        add(GeoLocatorEvent.receivedLocation(location));
      }
    });

    // emit.forEach(getLocationStreamUseCase(), onData: (location) {
    //   return state.copyWith(
    //     currentLatLng: location,
    //     isStreaming: true,
    //   );
    // });
  }

  Future<void> _onStopLocationStream(
    StopLocationStream event,
    Emitter<GeoLocatorState> emit,
  ) async {
    await _subscription?.cancel();

    emit(state.copyWith(
      isStreaming: false
    ));
  }

  Future<void> _onGetCurrentLocation(
    GetCurrentLocation event,
    Emitter<GeoLocatorState> emit,
  ) async {
    await getCurrentLocationUseCase(GetCurrentLocationParams())
      ..onSuccess((location) {
        add(GeoLocatorEvent.receivedLocation(location));
      })
      ..onError((error) {});
  }

  void _onRecievedLocation(
    RecievedLocation event,
    Emitter<GeoLocatorState> emit,
  ) {
    emit(state.copyWith(
      currentLatLng: event.location,
    ));
    print(event.location);
  }
}
