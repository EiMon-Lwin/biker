import 'package:core/core.dart';
import 'package:geo_locator/application/application.dart';
import 'package:geo_locator/data/data.dart';
import 'package:geo_locator/domain/domain.dart';
import 'package:geo_locator/domain/usecases/get_distance_meters_between.dart';
import 'package:geo_locator/domain/usecases/get_location_stream.dart';
import 'package:geo_locator_api/geo_locator_api.dart';
import 'package:geo_locator_api/geo_locator_api_impl.dart';
import 'package:service_locator/service_locator.dart';

class GeoLocatorModule implements DependencyConfigurator {
  @override
  void configureDependencies(DependencyConfigurationContext context, ServiceLocator serviceLocator) {
    provideGeoLocatorApi(serviceLocator);
    provideGeoLocatorRepository(serviceLocator);
    provideGetCurrentLocationUseCase(serviceLocator);
    provideGetLocationEnabledUseCase(serviceLocator);
    provideGetPermissionStatusUseCase(serviceLocator);
    provideOpenLocationSettingsUseCase(serviceLocator);
    provideRequestPermissionUseCase(serviceLocator);
    provideGetDistanceMetersBetween(serviceLocator);
    provideGetLocationStreamUseCase(serviceLocator);
    provideGeoLocatorBloc(serviceLocator);
  }

  void provideGeoLocatorApi(ServiceLocator serviceLocator) {
    serviceLocator.registerSingleton<GeoLocatorApi>(GeoLocatorApiImplementation());
  }

  void provideGeoLocatorRepository(ServiceLocator serviceLocator) {
    serviceLocator.registerSingleton<GeoLocatorRepository>(GeoLocatorRepositoryImpl(inject()));
  }

  void provideGetCurrentLocationUseCase(ServiceLocator serviceLocator) {
    serviceLocator.registerSingleton(GetCurrentLocationUseCase(inject()));
  }

  void provideGetLocationEnabledUseCase(ServiceLocator serviceLocator) {
    serviceLocator.registerSingleton(GetLocationEnabledUseCase(inject()));
  }

  void provideGetPermissionStatusUseCase(ServiceLocator serviceLocator) {
    serviceLocator.registerSingleton(GetPermissionStatusUseCase(inject()));
  }

  void provideOpenLocationSettingsUseCase(ServiceLocator serviceLocator) {
    serviceLocator.registerSingleton(OpenLocationSettingUseCase(inject()));
  }

  void provideRequestPermissionUseCase(ServiceLocator serviceLocator) {
    serviceLocator.registerSingleton(RequestPermissionUseCase(inject()));
  }

  void provideGetDistanceMetersBetween(ServiceLocator serviceLocator) {
    serviceLocator.registerSingleton(GetDistanceMetersBetweenUseCase(inject()));
  }

  void provideGetLocationStreamUseCase(ServiceLocator serviceLocator) {
    serviceLocator.registerSingleton(GetLocationStreamUseCase(inject()));
  }

  void provideGeoLocatorBloc(ServiceLocator serviceLocator) {
    serviceLocator.registerSingleton(GeoLocatorBloc(
      inject(),
      inject(),
      inject(),
      inject(),
      inject(),
      inject(),
    ));
  }
}