import 'package:biker/app/debug/app_module.dart';
import 'package:biker/app/debug/data_module.dart';
import 'package:biker/app/release/app_module.dart';
import 'package:biker/app/release/data_module.dart';
import 'package:biker/src/config/client_config/client_config.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:service_locator/service_locator.dart';
import 'package:service_locator/service_locator_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_module.dart';
import 'data_module.dart';

class AppBuilder {
  late GlobalKey<ScaffoldState> _primaryScaffoldKey;
  GlobalKey<ScaffoldState> get primaryScaffoldKey => _primaryScaffoldKey;

  late GlobalKey<NavigatorState> _rootNavigationKey;
  GlobalKey<NavigatorState> get rootNavigationKey => _rootNavigationKey;

  late DataModules _dataModules;
  DataModules get dataModules => _dataModules;

  late AppModules _appModule;
  AppModules get appModules => _appModule;

  final _injector = ServiceLocatorRealAdapter(GetIt.I);
  ServiceLocator get injector => _injector;

  final developerApplicationContext = DependencyConfigurationContext(
    isDevEnv: true,
    scheme: ClientConstants.scheme,
    host: ClientConstants.analyticApiHost,
    hubHost: ClientConstants.analyticsHubHost,
    apiVersionRoutes: ClientConstants.apiVersionRoutesMap,
    chatHubPath: ClientConstants.chatHubPath,
    orderTrackingHubPath: ClientConstants.orderTrackingHubPath,
    callHubPath: ClientConstants.callHubPath,
    merchantOrderHubPath: ClientConstants.merchantOrderHubPath,
    pingAddress: ClientConstants.analyticApiHost,
  );

  final releaseApplicationContext = DependencyConfigurationContext(
    isDevEnv: false,
    scheme: ClientConstants.scheme,
    host: ClientConstants.host,
    hubHost: ClientConstants.hubHost,
    apiVersionRoutes: ClientConstants.apiVersionRoutesMap,
    chatHubPath: ClientConstants.chatHubPath,
    orderTrackingHubPath: ClientConstants.orderTrackingHubPath,
    callHubPath: ClientConstants.callHubPath,
    merchantOrderHubPath: ClientConstants.merchantOrderHubPath,
    pingAddress: ClientConstants.host,
  );

  DependencyConfigurationContext provideConfigurationContext(
      Environment environment) {
    switch (environment) {
      case Environment.dev:
        return developerApplicationContext;
      case Environment.release:
        return releaseApplicationContext;
      default:
        return developerApplicationContext;
    }
  }

  DataModules provideDataModules(Environment environment) {
    switch (environment) {
      case Environment.dev:
        return DataModulesDebug(
          rootNavigationKey,
          primaryScaffoldKey,
          provideConfigurationContext(environment),
          _injector,
        );
      case Environment.release:
        return DataModulesRelease(
          rootNavigationKey,
          primaryScaffoldKey,
          provideConfigurationContext(environment),
          _injector,
        );
      default:
        return DataModulesDebug(
          rootNavigationKey,
          primaryScaffoldKey,
          provideConfigurationContext(environment),
          _injector,
        );
    }
  }

  AppModules provideAppModules(Environment environment) {
    switch (environment) {
      case Environment.dev:
        return AppModulesDebug(
          provideDataModules(environment),
          _injector,
        );
      case Environment.release:
        return AppModulesRelease(
          provideDataModules(environment),
          _injector,
        );
      default:
        return AppModulesDebug(
          provideDataModules(environment),
          _injector,
        );
    }
  }

  Future<void> initialize(Environment environment) async {
    _rootNavigationKey = GlobalKey<NavigatorState>();
    _primaryScaffoldKey = GlobalKey<ScaffoldState>();

    //Registering application's injector
    registerInjector(injector);

    //Avoiding async 
    final prefs = await SharedPreferences.getInstance();
    injector.registerSingleton(prefs);

    _dataModules = provideDataModules(environment)
      ..provideDialogApi()
      ..provideEnvJar()
      ..provideLocalStorage()
      ..provideLocalizationApi()
      ..provideMyanmarPhoneNumberValidator()
      ..provideResourceSrings()
      ..provideSecureLocalStroage()
      ..provideTokenJar()
      ..provideValidatorApi()
      ..provideClient()
      ..provideImagePicker()
      ..provideFormatterApi()
      ..provideNetworkClient();
    
    
    _appModule = provideAppModules(environment);
    configureModules(environment);
    
    _appModule
      ..provideAppStateBloc()
      ..provideRouterService()
      ..provideAppState();
  }

  void configureModules(Environment environment) {
    final modules = [
      _appModule.provideScheduleModule(),
      _appModule.provideAuthenticationModule(),
      _appModule.provideSmsModule(),
      _appModule.provideBikerInfoModule(),
      _appModule.provideGeoLocatorModule(),
      _appModule.provideNotificationModule(),
      _appModule.provideOrderModule(),
    ];

    for (final configurator in modules) {
      configurator.configureDependencies(
        provideConfigurationContext(environment),
        injector,
      );
    }
  }
}
