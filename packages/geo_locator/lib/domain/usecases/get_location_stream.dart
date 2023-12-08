import 'dart:async';

import 'package:core/core.dart';
import 'package:geo_locator/domain/repositories/geo_locator.dart';
import 'package:geo_locator_api/geo_locator_api.dart';

class GetLocationStreamUseCase extends UseCase<Stream<LatLng>, void> {
  // final GeoLocatorApi geoLocatorApi;
  final GeoLocatorRepository repository;

  const GetLocationStreamUseCase(this.repository);

  @override
  Stream<LatLng> call([void params]) {
    return repository.getLocationStream();
  }
}