part of 'geo_locator_bloc.dart';

@freezed
class GeoLocatorEvent with _$GeoLocatorEvent {
  const factory GeoLocatorEvent.checkLocationEnabled() = CheckLocationEnabledEvent;
  const factory GeoLocatorEvent.checkLocationPermission() = CheckLocationPermissionEvent;
  const factory GeoLocatorEvent.requestLocationPermission() = RequestLocationPermission;
  const factory GeoLocatorEvent.openLocationSetting() = OpenLocationSetting;
  const factory GeoLocatorEvent.startLocationStream() = StartLocationStream;
  const factory GeoLocatorEvent.stopLocationStream() = StopLocationStream;
  const factory GeoLocatorEvent.getCurrentLocation() = GetCurrentLocation;
  const factory GeoLocatorEvent.receivedLocation(LatLng location) = RecievedLocation;
}