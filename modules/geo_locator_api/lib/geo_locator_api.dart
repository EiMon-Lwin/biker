library geo_locator_api;

abstract class GeoLocatorApi {
  Future<bool> isLocationEnabled();

  Future<LocationPermissionStatus> getPermissionStatus();

  Future<LatLng> getCurrentLocation({
    LocationAccuracyLevel accuracyLevel,
    bool forceAndroidLocationManager,
    Duration? timeLimit,
  });
  
  Future<bool> openGPSSetting();

  Future<LocationPermissionStatus> requestPermission();
}

class LatLng {
  final double lat;
  final double long;

  const LatLng(this.lat, this.long);
}

enum LocationPermissionStatus {
  always,
  whileInUse,
  denied,
}

enum LocationAccuracyLevel {
  lowest,
  low,
  medium,
  high,
  best,
  bestForNavigation,
  reduced,
}
