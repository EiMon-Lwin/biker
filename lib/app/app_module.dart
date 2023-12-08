import 'package:app_state/app_state.dart';
import 'package:app_state_notifier/app_state_notifier.dart';
import 'package:biker/app/data_module.dart';
import 'package:biker/src/config/router/router.dart';
import 'package:notification/notification.dart';
import 'package:service_locator/service_locator.dart';

import 'package:authentication/configurator.dart';
import 'package:schedule/configurator.dart';
import 'package:biker_info/configurator.dart';
import 'package:geo_locator/configurator.dart';
import 'package:sms/configurator.dart';
import 'package:order/configurator.dart';

enum Environment {
  dev,
  release,
}

abstract class AppModules  extends ServiceLocatorMixin {
  final DataModules dataModules;

  const AppModules(
    this.dataModules,
    ServiceLocator serviceLocator,
  ) : super(serviceLocator);

  AppStateBloc provideAppStateBloc();

  RouterService provideRouterService();

  AppStateNotifier provideAppState();

  GeoLocatorModule provideGeoLocatorModule();

  AuthenticationModule provideAuthenticationModule();

  BikerInfoModule provideBikerInfoModule();

  ScheduleModule provideScheduleModule();

  SmsModule provideSmsModule();

  OrderModule provideOrderModule();

  NotificationModule provideNotificationModule();
}
