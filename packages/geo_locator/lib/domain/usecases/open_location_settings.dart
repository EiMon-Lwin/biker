import 'package:core/core.dart';
import 'package:geo_locator/domain/repositories/geo_locator.dart';

class OpenLocationSettingUseCase implements UseCase<DataState<bool>, void> {
  final GeoLocatorRepository repository;

  const OpenLocationSettingUseCase(this.repository);

  @override
  Future<DataState<bool>> call([void params]) {
    return repository.openGPSSetting();
  }
}