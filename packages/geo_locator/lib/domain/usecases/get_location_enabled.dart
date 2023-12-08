import 'package:core/core.dart';
import 'package:geo_locator/domain/repositories/geo_locator.dart';

class GetLocationEnabledUseCase implements UseCase<DataState<bool>, void> {
  final GeoLocatorRepository repository;
  const GetLocationEnabledUseCase(this.repository);

  @override
  Future<DataState<bool>> call([void params]) async {
    return await repository.isLocationEnabled();
  }
}
