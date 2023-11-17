import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geo_locator_api/geo_locator_api.dart';

part 'geo_locator_event.dart';
part 'geo_locator_state.dart';
part 'geo_locator_bloc.freezed.dart';

class GeoLocatorBloc extends Bloc<GeoLocatorEvent, GeoLocatorState> {
  final GeoLocatorApi geoLocator;
  GeoLocatorBloc(this.geoLocator) : super(GeoLocatorState(
    isLocationTurnOn: false,
    isPermissionEnabled: false,
  )) {
    on<CheckLocationEnabledEvent>(_onCheckLocationEnabledEvent);
    on<CheckLocationPermissionEvent>(_onCheckLocationPermission);
    on<RequestLocationPermission>(_onRequestLocationPermission);
    on<OpenLocationSetting>(_onOpenLocationSettingEvent);
  }

  FutureOr<void> _onCheckLocationEnabledEvent(
    CheckLocationEnabledEvent event,
    Emitter<GeoLocatorState> emit,
  ) async {
    final isEnabled = await geoLocator.isLocationEnabled();

    emit(state.copyWith(
      isLocationTurnOn: isEnabled,
    ));
  }

  FutureOr<void> _onCheckLocationPermission(
    CheckLocationPermissionEvent event,
    Emitter<GeoLocatorState> emit,
  ) async {
    final permissionStatus = await geoLocator.getPermissionStatus();
    final hasPermission = 
      permissionStatus == LocationPermissionStatus.always ||
      permissionStatus == LocationPermissionStatus.whileInUse;
      
    emit(state.copyWith(
      isPermissionEnabled: hasPermission,
    ));
  }


  FutureOr<void> _onRequestLocationPermission(
    RequestLocationPermission event,
    Emitter<GeoLocatorState> emit,
  ) async {
    final permissionStatus = await geoLocator.requestPermission();
    print(permissionStatus.name);
    add(CheckLocationPermissionEvent());
  }

  FutureOr<void> _onOpenLocationSettingEvent(
    OpenLocationSetting event,
    Emitter<GeoLocatorState> emit,
  ) async {
    await geoLocator.openGPSSetting();
    add(CheckLocationEnabledEvent());
  }
}
