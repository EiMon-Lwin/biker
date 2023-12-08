import 'package:biker/app/data_module.dart';
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
import 'package:image_picker/image_picker.dart';
import 'package:image_picker_api/image_picker_api.dart';
import 'package:image_picker_api/image_picker_api_impl.dart';
import 'package:local_storage/local_storage.dart';
import 'package:localization_api/localization_api.dart';
import 'package:localization_api/localization_api_impl.dart';
import 'package:mm_phone_number_validator/mm_phone_number_validator.dart';
import 'package:mm_phone_number_validator/mm_phone_number_validator_impl.dart';
import 'package:network_client/network_client.dart';
import 'package:network_client_real_adapter/network_client_real_adapter.dart';
import 'package:resource_strings/resource_strings.dart';
import 'package:resource_strings/resource_strings_impl.dart';
import 'package:secure_local_storage/secure_local_storage.dart';
import 'package:service_locator/service_locator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:token_jar/token_jar.dart';
import 'package:token_jar/token_jar_impl.dart';
import 'package:validator_api/validator_api.dart';
import 'package:validator_api/validator_api_impl.dart';

class DataModulesRelease extends DataModules {
  const DataModulesRelease(
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
  DialogApi provideDialogApi() {
    return registerAsSingleton<DialogApi>(() => DialogApiImplementation(
          provideResourceSrings(),
          provideLocalizationApi(),
          rootNavigationKey,
          primaryScaffoldKey,
        ));
  }

  @override
  EnvJar provideEnvJar() {
    return registerAsSingleton(() => EnvJarImplementation());
  }

  @override
  LocalStorage provideLocalStorage() {
    return registerAsSingleton<LocalStorage>(
        () => LocalStroageImp(serviceLocator<SharedPreferences>()));
  }

  @override
  LocalizationApi provideLocalizationApi() {
    return registerAsSingleton<LocalizationApi>(() => LocalizationApiImpl(
          provideLocalStorage(),
        ));
  }

  @override
  MyanmarPhoneNumberValidator provideMyanmarPhoneNumberValidator() {
    return registerAsSingleton(
        () => MyanmarPhoneNumberValidatorImplementation());
  }

  @override
  ResourceStrings provideResourceSrings() {
    return registerAsSingleton(() => ResourceStringsImpl());
  }

  @override
  SecureLocalStorage provideSecureLocalStroage() {
    return registerAsSingleton<SecureLocalStorage>(
        () => const SecureLocalStorageImpl(FlutterSecureStorage()));
  }

  @override
  TokenJar provideTokenJar() {
    return registerAsSingleton<TokenJar>(
        () => TokenJarImpl(provideSecureLocalStroage()));
  }

  @override
  ValidatorApi provideValidatorApi() {
    return registerAsSingleton<ValidatorApi>(() => ValidatorApiImpl(
        provideResourceSrings(), provideMyanmarPhoneNumberValidator()));
  }

  @override
  Dio provideClient() {
    return registerAsSingleton(() => Dio(BaseOptions(
          baseUrl: "${configContext.scheme}://${configContext.host}/api/v1/",
        )));
  }

  @override
  FormatterApi provideFormatterApi() {
    return registerAsSingleton(() => FormatterApiImpl());
  }

  @override
  NetworkClient provideNetworkClient() {
    return registerAsSingleton<NetworkClient>(
      () => NetworkClientRealAdapter(
        provideClient(),
        NetworkClientConfig(
          scheme: configContext.scheme,
          host: configContext.host,
          apiVersionRoutesMap: configContext.apiVersionRoutes,
          onException: configContext.onException,
        ),
      ),
    );
  }

  @override
  ImagePickerApi provideImagePicker() {
    return registerAsSingleton<ImagePickerApi>(
        () => ImagePickerApiImpl(ImagePicker()));
  }
}
