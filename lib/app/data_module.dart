import 'package:core/core.dart';
import 'package:image_picker_api/image_picker_api.dart';
import 'package:dialog_api/dialog_api.dart';
import 'package:dio/dio.dart';
import 'package:env_jar/env_jar.dart';
import 'package:flutter/material.dart';
import 'package:local_storage/local_storage.dart';
import 'package:localization_api/localization_api.dart';
import 'package:mm_phone_number_validator/mm_phone_number_validator.dart';
import 'package:network_client/network_client.dart';
import 'package:formatter_api/formatter_api.dart';
import 'package:resource_strings/resource_strings.dart';
import 'package:secure_local_storage/secure_local_storage.dart';
import 'package:service_locator/service_locator.dart';
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

  NetworkClient provideNetworkClient();

  Dio provideClient();

  ImagePickerApi provideImagePicker();

  DialogApi provideDialogApi();

  LocalStorage provideLocalStorage();

  LocalizationApi provideLocalizationApi();

  FormatterApi provideFormatterApi();

  ResourceStrings provideResourceSrings();
  
  MyanmarPhoneNumberValidator provideMyanmarPhoneNumberValidator();

  SecureLocalStorage provideSecureLocalStroage();

  EnvJar provideEnvJar();

  TokenJar provideTokenJar();

  ValidatorApi provideValidatorApi();
}
