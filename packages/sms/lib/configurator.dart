import 'package:core/core.dart';
import 'package:dialog_api/dialog_api.dart';
import 'package:dio/dio.dart';
import 'package:localization_api/localization_api.dart';
import 'package:resource_strings/resource_strings.dart';
import 'package:service_locator/service_locator.dart';
import 'package:sms/application/application.dart';
import 'package:sms/data/data.dart';
import 'package:sms/domain/domain.dart';
import 'package:token_jar/token_jar.dart';

class SmsModule implements DependencyConfigurator {
  final Dio client;
  final TokenJar tokenJar;
  final ResourceStrings resourceStrings;
  final LocalizationApi localizationApi;
  final DialogApi dialogApi;

  SmsModule({
    required this.client,
    required this.tokenJar,
    required this.resourceStrings,
    required this.localizationApi,
    required this.dialogApi,
  });

  @override
  void configureDependencies(DependencyConfigurationContext context, ServiceLocator serviceLocator) {
    provideSmsRepository(serviceLocator);
    provideSmsBloc(serviceLocator);
  }

  void provideSmsRepository(ServiceLocator serviceLocator) {
    serviceLocator.registerSingleton<SmsRepository>(SmsRepositoryImpl(
      client,
      tokenJar,
    ));
  }

  void provideSmsBloc(ServiceLocator serviceLocator) {
    serviceLocator.registerSingleton(SmsBloc(
      inject(),
      resourceStrings,
      localizationApi,
      dialogApi
    ));
  }
}
