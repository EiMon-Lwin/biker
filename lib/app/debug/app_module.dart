import 'package:app_state/application/bloc/app_state_bloc.dart';
import 'package:authentication/configurator.dart';
import 'package:biker/src/config/router/router.dart';
import 'package:app_state_notifier/app_state_notifier.dart';
import 'package:biker_info/configurator.dart';
import 'package:core/core.dart';
import 'package:geo_locator/configurator.dart';
import 'package:notification/notification.dart';
import 'package:order/configurator.dart';
import 'package:schedule/configurator.dart';
import 'package:sms/configurator.dart';
import '../app_module.dart';

class AppModulesDebug extends AppModules {
  AppModulesDebug(super.dataModules, super.serviceLocator);

  @override
  RouterService provideRouterService() {
    return registerAsSingleton(() => RouterService(
      dataModules.rootNavigationKey,
      provideAppState(),
    ));
  }

  @override
  AppStateNotifier provideAppState() {
    return registerAsSingleton(() => AppStateNotifier(
      provideAppStateBloc(),
      inject(),
      inject(),
    ));
  }


  @override
  AppStateBloc provideAppStateBloc() {
    return registerAsSingleton(() => AppStateBloc(
      inject(),
      inject(),
      inject(),
      dataModules.provideTokenJar(),
    ));
  }

  @override
  GeoLocatorModule provideGeoLocatorModule() {
    return GeoLocatorModule();
  }

  @override
  AuthenticationModule provideAuthenticationModule() {
    return AuthenticationModule(
      envJar: dataModules.provideEnvJar(),
      tokenJar: dataModules.provideTokenJar(),
      client: dataModules.provideClient(),
      secureLocalStorage: dataModules.provideSecureLocalStroage(),
    );
  }

  @override
  BikerInfoModule provideBikerInfoModule() {
    return BikerInfoModule(
      client: dataModules.provideClient(),
      tokenJar: dataModules.provideTokenJar(),
    );
  }

  @override
  ScheduleModule provideScheduleModule() {
    return ScheduleModule(
      client: dataModules.provideClient(),
      tokenJar: dataModules.provideTokenJar(),
    );
  }

  @override
  OrderModule provideOrderModule() {
    return OrderModule(
      client: dataModules.provideClient(),
      tokenJar: dataModules.provideTokenJar(),
    );
  }

  @override
  NotificationModule provideNotificationModule() {
    return NotificationModule(
      client: dataModules.provideClient(),
    );
  }

  @override
  SmsModule provideSmsModule() {
    return SmsModule(
      client: dataModules.provideClient(),
      tokenJar: dataModules.provideTokenJar(),
      resourceStrings: dataModules.provideResourceSrings(),
      localizationApi: dataModules.provideLocalizationApi(),
      dialogApi: dataModules.provideDialogApi(),
    );
  }
}
