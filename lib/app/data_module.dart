import 'package:authentication/authentication.dart';
import 'package:biker_info/biker_info.dart';
import 'package:core/core.dart';
import 'package:dialog_api/dialog_api.dart';
import 'package:dio/dio.dart';
import 'package:env_jar/env_jar.dart';
import 'package:flutter/material.dart';
import 'package:geo_locator_api/geo_locator_api.dart';
import 'package:local_storage/local_storage.dart';
import 'package:localization_api/localization_api.dart';
import 'package:mm_phone_number_validator/mm_phone_number_validator.dart';
import 'package:notification/notification.dart';
import 'package:formatter_api/formatter_api.dart';
import 'package:order/order.dart';
import 'package:resource_strings/resource_strings.dart';
import 'package:schedule/schedule.dart';
import 'package:secure_local_storage/secure_local_storage.dart';
import 'package:service_locator/service_locator.dart';
import 'package:sms/domain/repositories/sms_repository.dart';
import 'package:token_jar/token_jar.dart';
import 'package:validator_api/validator_api.dart';

abstract class DataModules extends ServiceLocatorMixin {
  const DataModules(
    this.configContext,
    this.rootNavigationKey,
    this.primaryScaffoldKey,
    ServiceLocator serviceLocator,
  ):super(serviceLocator);

  final DependencyConfigurationContext configContext;
  final GlobalKey<NavigatorState> rootNavigationKey;
  final GlobalKey<ScaffoldState> primaryScaffoldKey;
  Dio provideClient();

  DialogApi provideDialogApi();

  AuthenticationRepository provideAuthenticationRepository();

  BikerInfoRepository provideBikerInfoRepository();

  GeoLocatorApi provideGeoLocatorApi();

  LocalStorage provideLocalStorage();

  LocalizationApi provideLocalizationApi();

  FormatterApi provideFormatterApi();

  NotificationRepository provideNotificationRepository();

  OrderRepository provideOrderRepository();

  ResourceStrings provideResourceSrings();
  
  MyanmarPhoneNumberValidator provideMyanmarPhoneNumberValidator();

  ScheduleRepository provideScheduleRepository();

  SecureLocalStorage provideSecureLocalStroage();

  SmsRepository provideSmsRepository();

  EnvJar provideEnvJar();

  TokenJar provideTokenJar();

  ValidatorApi provideValidatorApi();
}
