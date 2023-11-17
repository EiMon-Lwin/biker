import 'geo_locator_api.dart';
import 'package:geolocator/geolocator.dart';

class GeoLocatorApiImplementation implements GeoLocatorApi {
  @override
  Future<bool> isLocationEnabled() async {
    return await Geolocator.isLocationServiceEnabled() == true;
  }

  @override
  Future<LocationPermissionStatus> getPermissionStatus() async {
    return (await Geolocator.checkPermission()).toStatus();
  }
  
  @override
  Future<LatLng> getCurrentLocation({
    LocationAccuracyLevel accuracyLevel = LocationAccuracyLevel.best,
    bool forceAndroidLocationManager = false,
    Duration? timeLimit,
  }) async {
    return (await Geolocator.getCurrentPosition(
      desiredAccuracy: accuracyLevel.toAccurancyLevel(),
      forceAndroidLocationManager: forceAndroidLocationManager,
      timeLimit: timeLimit,
    )).toLatLng();
  }


  @override
  Future<bool> openGPSSetting() async {
    return await Geolocator.openLocationSettings();
  }

  @override
  Future<LocationPermissionStatus> requestPermission() async {
    return (await Geolocator.requestPermission()).toStatus();
  }
}

extension LocationPermissionStatusExtension on LocationPermission {
  LocationPermissionStatus toStatus() {
    return {
          LocationPermission.always: LocationPermissionStatus.always,
          LocationPermission.whileInUse: LocationPermissionStatus.whileInUse,
          LocationPermission.denied: LocationPermissionStatus.denied,
        }[this] ??
        LocationPermissionStatus.denied;
  }
}

extension LatLngExtension on Position {
  LatLng toLatLng() {
    return LatLng(latitude, longitude);
  }
}

extension LocationAccuranceyLevelExtension on LocationAccuracyLevel {
  LocationAccuracy toAccurancyLevel() {
    return {
          LocationAccuracyLevel.lowest: LocationAccuracy.lowest,
          LocationAccuracyLevel.low: LocationAccuracy.low,
          LocationAccuracyLevel.medium: LocationAccuracy.medium,
          LocationAccuracyLevel.high: LocationAccuracy.high,
          LocationAccuracyLevel.best: LocationAccuracy.best,
          LocationAccuracyLevel.bestForNavigation:
              LocationAccuracy.bestForNavigation,
        }[this] ??
        LocationAccuracy.high;
  }
}
