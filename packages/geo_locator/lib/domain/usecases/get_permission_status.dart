import 'package:core/core.dart';
import 'package:geo_locator/domain/repositories/geo_locator.dart';
import 'package:geo_locator_api/geo_locator_api.dart';

class GetPermissionStatusUseCase implements UseCase<DataState<LocationPermissionStatus>, void> {
  final GeoLocatorRepository repository;

  const GetPermissionStatusUseCase(this.repository);

  @override
  Future<DataState<LocationPermissionStatus>> call([void params]) async {
    return await repository.getPermissionStatus();
  }
}