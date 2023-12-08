import 'geo_locator_api.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart' as latlng2;

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
    LocationAccuracyLevel? accuracyLevel,
    bool? forceAndroidLocationManager,
    Duration? timeLimit,
  }) async {
    accuracyLevel ??= LocationAccuracyLevel.best;
    forceAndroidLocationManager ??= false;

    return (await Geolocator.getCurrentPosition(
      desiredAccuracy: accuracyLevel.toAccurancyLevel(),
      forceAndroidLocationManager: forceAndroidLocationManager,
      timeLimit: timeLimit,
    ))
        .toLatLng();
  }

  @override
  Future<bool> openGPSSetting() async {
    return await Geolocator.openLocationSettings();
  }

  @override
  Future<LocationPermissionStatus> requestPermission() async {
    return (await Geolocator.requestPermission()).toStatus();
  }

  @override
  double distanceMetersBetween(LatLng firstPoint, LatLng secondPoint) {
    return const latlng2.Vincenty().distance(
      firstPoint.toLatLng(),
      secondPoint.toLatLng(),
    );
  }

  @override
  Stream<LatLng> getLocationStream() {
    return Geolocator.getPositionStream()
        .distinct(_comparePosition)
        .map((event) => event.toLatLng());
  }

  bool _comparePosition(Position previous, Position next) {
    return previous.latitude != next.latitude ||
        previous.longitude != next.longitude;
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

extension LatLng2DistanceUtils on latlng2.LatLng {
  LatLng toLatLng() {
    return LatLng(latitude, longitude);
  }
}

extension LatLngDistanceUtils on LatLng {
  latlng2.LatLng toLatLng() {
    return latlng2.LatLng(lat, long);
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
