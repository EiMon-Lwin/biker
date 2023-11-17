part of 'geo_locator_bloc.dart';

@freezed
class GeoLocatorEvent with _$GeoLocatorEvent {
  const factory GeoLocatorEvent.checkLocationEnabled() = CheckLocationEnabledEvent;
  const factory GeoLocatorEvent.checkLocationPermission() = CheckLocationPermissionEvent;
  const factory GeoLocatorEvent.requestLocationPermission() = RequestLocationPermission;
  const factory GeoLocatorEvent.openLocationSetting() = OpenLocationSetting;
}