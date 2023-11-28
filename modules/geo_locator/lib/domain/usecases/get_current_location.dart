import 'package:core/core.dart';
import 'package:geo_locator_api/geo_locator_api.dart';

import '../repositories/geo_locator.dart';

class GetCurrentLocationUseCase implements UseCase<DataState<LatLng>, GetCurrentLocationParams> {
  final GeoLocatorRepository repository;

  const GetCurrentLocationUseCase(this.repository);

  @override
  Future<DataState<LatLng>> call(GetCurrentLocationParams params) {
    return repository.getCurrentLococation(
      accuracyLevel: params.accuracyLevel,
      forceAndroidLocationManager: params.forceAndroidLocationManager,
      timeLimit: params.timeLimit,
    );
  }
}

class GetCurrentLocationParams {
  final LocationAccuracyLevel? accuracyLevel;
  final bool? forceAndroidLocationManager;
  final Duration? timeLimit;

  const GetCurrentLocationParams({
    this.accuracyLevel,
    this.forceAndroidLocationManager,
    this.timeLimit,
  });
}