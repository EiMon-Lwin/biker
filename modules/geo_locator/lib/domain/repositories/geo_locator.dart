import 'package:core/core.dart';
import 'package:geo_locator_api/geo_locator_api.dart';

abstract class GeoLocatorRepository {
  Future<DataState<LatLng>> getCurrentLococation({
    LocationAccuracyLevel? accuracyLevel,
    bool? forceAndroidLocationManager,
    Duration? timeLimit,
  });

  Future<DataState<LocationPermissionStatus>> getPermissionStatus();

  Future<DataState<bool>> isLocationEnabled();

  Future<DataState<bool>> openGPSSetting();

  Future<DataState<LocationPermissionStatus>> requestPermission();
}
