import 'package:core/core.dart';
import 'package:geo_locator_api/geo_locator_api.dart';

class GetDistanceMetersBetweenUseCase extends UseCase<double, GetDistanceMetersBetweenParams> {
  final GeoLocatorApi api;

  const GetDistanceMetersBetweenUseCase(this.api);

  @override
  double call(GetDistanceMetersBetweenParams params) {
    return api.distanceMetersBetween(params.firstPoint, params.secondPoint);
  }
}

class GetDistanceMetersBetweenParams {
  final LatLng firstPoint;
  final LatLng secondPoint;

  const GetDistanceMetersBetweenParams({
    required this.firstPoint,
    required this.secondPoint,
  });
}
