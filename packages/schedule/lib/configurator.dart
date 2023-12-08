import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:schedule/application/schedule_bloc/schedule_bloc.dart';
import 'package:schedule/application/schedule_check_in/schedule_check_in_bloc.dart';
import 'package:schedule/schedule.dart';
import 'package:service_locator/service_locator.dart';
import 'package:token_jar/token_jar.dart';

class ScheduleModule implements DependencyConfigurator {
  final Dio client;
  final TokenJar tokenJar;

  const ScheduleModule({required this.client, required this.tokenJar});

  @override
  void configureDependencies(DependencyConfigurationContext context, ServiceLocator serviceLocator) {
    provideScheduleRepository(serviceLocator);
    provideGetAvailableSchedulesUseCase(serviceLocator);
    provideCheckInScheduleUseCase(serviceLocator);
    provideCheckOutScheduleUseCase(serviceLocator);
    provideGetNextSchedulesUseCase(serviceLocator);
    provideScheduleCheckInBloc(serviceLocator);
    provideScheduleBloc(serviceLocator);
  }

  void provideScheduleBloc(ServiceLocator serviceLocator) {
    serviceLocator.registerSingleton(ScheduleBloc(
      inject(),
      inject(),
      inject(),
      inject(),
    ));
  }

  void provideScheduleCheckInBloc(ServiceLocator serviceLocator) {
    serviceLocator.registerSingleton(ScheduleCheckInBloc(
      inject(),
      inject(),
    ));
  }

  void provideGetAvailableSchedulesUseCase(ServiceLocator serviceLocator) {
    serviceLocator.registerSingleton(GetAvailableSchedulesUseCase(
      inject(),
    ));
  }

  void provideGetNextSchedulesUseCase(ServiceLocator serviceLocator) {
    serviceLocator.registerSingleton(GetNextSchedulesUseCase(
      inject(),
    ));
  }

  void provideCheckInScheduleUseCase(ServiceLocator serviceLocator) {
    serviceLocator.registerSingleton(CheckInScheduleUseCase(
      inject(),
    ));
  }

  void provideCheckOutScheduleUseCase(ServiceLocator serviceLocator) {
    serviceLocator.registerSingleton(CheckOutScheduleUseCase(
      inject(),
    ));
  }

  void provideScheduleRepository(ServiceLocator serviceLocator) {
    serviceLocator.registerSingleton<ScheduleRepository>(ScheduleRepositoryImplementation(
      client,
      tokenJar,
    ));
  }
}
