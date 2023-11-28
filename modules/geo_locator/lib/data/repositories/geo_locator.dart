import 'package:core/core.dart';
import 'package:geo_locator/domain/repositories/geo_locator.dart';
import 'package:geo_locator_api/geo_locator_api.dart';

class GeoLocatorRepositoryImpl implements GeoLocatorRepository {
  final GeoLocatorApi api;

  const GeoLocatorRepositoryImpl(this.api);

  Future<DataState<LatLng>> getCurrentLococation({
    LocationAccuracyLevel? accuracyLevel,
    bool? forceAndroidLocationManager,
    Duration? timeLimit,
  }) async {
    try {
      return DataSuccess(
        await api.getCurrentLocation(
          accuracyLevel: accuracyLevel,
          forceAndroidLocationManager: forceAndroidLocationManager,
          timeLimit: timeLimit,
        ),
      );
    } on Exception catch (e) {
      return DataFailed(e);
    }
  }

  Future<DataState<LocationPermissionStatus>> getPermissionStatus() async {
    try {
      return DataSuccess(await api.getPermissionStatus());
    } on Exception catch (e) {
      return DataFailed(e);
    }
  }

  Future<DataState<bool>> isLocationEnabled() async {
    try {
      return DataSuccess(await api.isLocationEnabled());
    } on Exception catch (e) {
      return DataFailed(e);
    }
  }

  Future<DataState<bool>> openGPSSetting() async {
    try {
      return DataSuccess(await api.openGPSSetting());
    } on Exception catch (e) {
      return DataFailed(e);
    }
  }

  Future<DataState<LocationPermissionStatus>> requestPermission() async {
    try {
      return DataSuccess(await api.requestPermission());
    } on Exception catch (e) {
      return DataFailed(e);
    }
  }
}
