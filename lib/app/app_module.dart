import 'package:app_state/app_state.dart';
import 'package:app_state_notifier/app_state_notifier.dart';
import 'package:authentication/authentication.dart';
import 'package:biker/app/data_module.dart';
import 'package:biker/src/config/router/router.dart';
import 'package:biker_info/biker_info.dart';
import 'package:geo_locator/bloc/geo_locator_bloc.dart';
import 'package:order/order.dart';
import 'package:schedule/application/schedule_bloc/schedule_bloc.dart';
import 'package:schedule/application/schedule_check_in/schedule_check_in_bloc.dart';
import 'package:service_locator/service_locator.dart';

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

  AuthenticationBloc provideAuthenticationBloc();

  AppStateBloc provideAppStateBloc();

  BikerInfoBloc provideBikerInfoBloc();

  GeoLocatorBloc provideGeoLocatorBloc();

  OrderBloc provideOrderBloc();

  RouterService provideRouterService();

  AppStateNotifier provideAppState();

  ScheduleBloc provideScheduleBloc();

  ScheduleCheckInBloc provideScheduleCheckInBloc();
}
