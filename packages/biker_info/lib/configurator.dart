import 'package:biker_info/application/biker_info_application.dart';
import 'package:biker_info/data/repository/biker_repository.dart';
import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:service_locator/service_locator.dart';
import 'package:token_jar/token_jar.dart';

import 'domain/repository/biker_repository.dart';

class BikerInfoModule implements DependencyConfigurator {
  final Dio client;
  final TokenJar tokenJar;

  const BikerInfoModule({
    required this.client,
    required this.tokenJar,
  });

  @override
  void configureDependencies(
      DependencyConfigurationContext context, ServiceLocator serviceLocator) {
    provideBikerInfoRepository(serviceLocator);
    provideBikerInfoBloc(serviceLocator);
  }

  void provideBikerInfoRepository(ServiceLocator serviceLocator) {
    serviceLocator.registerSingleton<BikerInfoRepository>(
        BikerInfoRepositoryImpl(client, tokenJar));
  }

  void provideBikerInfoBloc(ServiceLocator serviceLocator) {
    serviceLocator.registerSingleton(BikerInfoBloc(
      inject(),
      inject(),
    ));
  }
}
