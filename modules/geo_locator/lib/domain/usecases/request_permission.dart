import 'package:core/core.dart';
import 'package:geo_locator_api/geo_locator_api.dart';

import '../repositories/geo_locator.dart';

class RequestPermissionUseCase implements UseCase<DataState<LocationPermissionStatus>, void> {
  final GeoLocatorRepository repository;
  const RequestPermissionUseCase(this.repository);
  
  @override
  Future<DataState<LocationPermissionStatus>> call([void params]) async {
    return repository.requestPermission();
  }
}
