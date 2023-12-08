import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:notification/application/application.dart';
import 'package:notification/data/data.dart';
import 'package:service_locator/service_locator.dart';

import 'domain/domain.dart';

class NotificationModule implements DependencyConfigurator {
  final Dio client;

  const NotificationModule({required this.client});

  @override
  void configureDependencies(DependencyConfigurationContext context, ServiceLocator serviceLocator) {
    provideNotifiationRepository(serviceLocator);
    provideRegisterNotificationUseCase(serviceLocator);
    provideNotificationBloc(serviceLocator);
  }

  void provideNotifiationRepository(ServiceLocator serviceLocator) {
    serviceLocator.registerSingleton<NotificationRepository>(NotificationRepositoryImpl(
      client,
    ));
  }

  void provideRegisterNotificationUseCase(ServiceLocator serviceLocator) {
    serviceLocator.registerSingleton(RegisterNotificationTokenUsecase(
      inject(),
    ));
  }

  void provideNotificationBloc(ServiceLocator serviceLocator) {
    serviceLocator.registerSingleton(NotificationBloc(
      inject()
    ));
  }
}