import 'package:authentication/authentication.dart';
import 'package:biker/app/data_module.dart';
import 'package:biker_info/biker_info.dart';
import 'package:core/core.dart';
import 'package:dialog_api/dialog_api.dart';
import 'package:dialog_api/dialog_api_impl.dart';
import 'package:dio/dio.dart';
import 'package:env_jar/env_jar.dart';
import 'package:env_jar/env_jar_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:formatter_api/formatter_api.dart';
import 'package:formatter_api/formatter_api_impl.dart';
import 'package:geo_locator_api/geo_locator_api.dart';
import 'package:geo_locator_api/geo_locator_api_impl.dart';
import 'package:local_storage/local_storage.dart';
import 'package:localization_api/localization_api.dart';
import 'package:localization_api/localization_api_impl.dart';
import 'package:mm_phone_number_validator/mm_phone_number_validator.dart';
import 'package:mm_phone_number_validator/mm_phone_number_validator_impl.dart';
import 'package:notification/notification.dart';
import 'package:order/order.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:resource_strings/resource_strings.dart';
import 'package:resource_strings/resource_strings_impl.dart';
import 'package:schedule/schedule.dart';
import 'package:secure_local_storage/secure_local_storage.dart';
import 'package:service_locator/service_locator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sms/data/data.dart';
import 'package:sms/domain/repositories/sms_repository.dart';
import 'package:token_jar/token_jar.dart';
import 'package:token_jar/token_jar_impl.dart';
import 'package:validator_api/validator_api.dart';
import 'package:validator_api/validator_api_impl.dart';

class DataModulesDebug extends DataModules {
  const DataModulesDebug(
    GlobalKey<NavigatorState> rootNavigationKey,
    GlobalKey<ScaffoldState> primaryScaffoldKey,
    DependencyConfigurationContext configContext,
    ServiceLocator serviceLocator,
  ) : super(
      configContext,
      rootNavigationKey,
      primaryScaffoldKey,
      serviceLocator,
    );

  @override
  AuthenticationRepository provideAuthenticationRepository() {
    return AuthenticationRepositoryImplementation(
      provideTokenJar(),
      provideClient(),
      provideSecureLocalStroage(),
    );
  }

  @override
  BikerInfoRepository provideBikerInfoRepository() {
    return registerAsSingleton(() => BikerInfoRepositoryImpl(
      provideClient(),
      provideTokenJar(),
    ));
  }

  @override
  DialogApi provideDialogApi() {
    return registerAsSingleton<DialogApi>(() => DialogApiImplementation(
      provideResourceSrings(),
      provideLocalizationApi(),
      rootNavigationKey.currentState?.context,
      primaryScaffoldKey,
    ));
  }

  @override
  EnvJar provideEnvJar() {
    return registerAsSingleton(() => EnvJarImplementation());
  }

  @override
  GeoLocatorApi provideGeoLocatorApi() {
    return registerAsSingleton(() => GeoLocatorApiImplementation());
  }

  @override
  LocalStorage provideLocalStorage() {
    return registerAsSingleton<LocalStorage>(() => LocalStroageImp(
      serviceLocator<SharedPreferences>()
    ));
  }

  @override
  LocalizationApi provideLocalizationApi() {
    return registerAsSingleton<LocalizationApi>(() => LocalizationApiImpl(
      provideLocalStorage(),
    ));
  }

  @override
  MyanmarPhoneNumberValidator provideMyanmarPhoneNumberValidator() {
    return registerAsSingleton(() => MyanmarPhoneNumberValidatorImplementation());
  }

  @override
  NotificationRepository provideNotificationRepository() {
    return registerAsSingleton(() => NotificationRepositoryImpl(
      provideClient(),
    ));
  }

  @override
  OrderRepository provideOrderRepository() {
    return registerAsSingleton(() => OrderRepositoryImpl(
      provideClient(),
    ));
  }

  @override
  ResourceStrings provideResourceSrings() {
    return registerAsSingleton(() => ResourceStringsImpl());
  }

  @override
  ScheduleRepository provideScheduleRepository() {
    return registerAsSingleton<ScheduleRepository>(() => ScheduleRepositoryImplementation(
      provideClient(),
      provideTokenJar(),
    ));
  }

  @override
  SecureLocalStorage provideSecureLocalStroage() {
    return registerAsSingleton<SecureLocalStorage>(() => const SecureLocalStorageImpl(
      FlutterSecureStorage()
    ));
  }

  @override
  SmsRepository provideSmsRepository() {
    return registerAsSingleton<SmsRepository>(() => SmsRepositoryFakeImpl(
      provideClient(),
      provideTokenJar(),
    ));
  }

  @override
  TokenJar provideTokenJar() {
    return registerAsSingleton<TokenJar>(() => TokenJarImpl(
      provideSecureLocalStroage()
    ));
  }

  @override
  ValidatorApi provideValidatorApi() {
    return registerAsSingleton<ValidatorApi>(() => ValidatorApiImpl(
      provideResourceSrings(),
      provideMyanmarPhoneNumberValidator()
    ));
  }

  @override
  Dio provideClient() {
    return registerAsSingleton(() => Dio(
      BaseOptions(
        baseUrl: "${configContext.scheme}://${configContext.host}/api/v1/",
      )
    )..interceptors.add(PrettyDioLogger()));
  }

  @override
  FormatterApi provideFormatterApi() {
    return registerAsSingleton(() => FormatterApiImpl());
  }
}
