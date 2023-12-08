import 'package:authentication/authentication.dart';
import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:env_jar/env_jar.dart';
import 'package:secure_local_storage/secure_local_storage.dart';
import 'package:service_locator/service_locator.dart';
import 'package:token_jar/token_jar.dart';

class AuthenticationModule implements DependencyConfigurator {
  final EnvJar envJar;
  final TokenJar tokenJar;
  final Dio client;
  final SecureLocalStorage secureLocalStorage;

  const AuthenticationModule({
    required this.envJar,
    required this.tokenJar,
    required this.client,
    required this.secureLocalStorage,
  });

  @override
  void configureDependencies(DependencyConfigurationContext context, ServiceLocator serviceLocator) {
    provideAuthenticationRepository(serviceLocator);
    provideAuthenticationBloc(serviceLocator);
  }

  void provideAuthenticationRepository(ServiceLocator serviceLocator) {
    serviceLocator.registerSingleton<AuthenticationRepository>(AuthenticationRepositoryImplementation(
      tokenJar,
      client,
      secureLocalStorage,
    ));
  }

  void provideAuthenticationBloc(ServiceLocator serviceLocator) {
    serviceLocator.registerSingleton(AuthenticationBloc(
      envJar,
      tokenJar,
      inject(),
    ));
  }
}
