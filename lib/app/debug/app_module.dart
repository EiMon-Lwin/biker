import 'package:authentication/application/bloc/authentication_bloc.dart';
import 'package:biker/src/config/router/router.dart';
import 'package:app_state_notifier/app_state_notifier.dart';
import 'package:geo_locator/bloc/geo_locator_bloc.dart';
import 'package:order/application/bloc/order_bloc.dart';
import 'package:biker_info/biker_info.dart';
import 'package:schedule/application/bloc/schedule_bloc.dart';
import '../app_module.dart';

class AppModulesDebug extends AppModules {
  AppModulesDebug(super.dataModules, super.serviceLocator);

  @override
  AuthenticationBloc provideAuthenticationBloc() {
    return registerAsSingleton(() => AuthenticationBloc(
      dataModules.provideEnvJar(),
      dataModules.provideTokenJar(),
      dataModules.provideAuthenticationRepository(),
    ));
  }

  @override
  BikerInfoBloc provideBikerInfoBloc() {
    return registerAsSingleton(() => BikerInfoBloc(
      provideAuthenticationBloc(),
      dataModules.provideBikerInfoRepository()
    ));
  }

  @override
  GeoLocatorBloc provideGeoLocatorBloc() {
    return registerAsSingleton(() => GeoLocatorBloc(
      dataModules.provideGeoLocatorApi(),
    ));
  }

  @override
  OrderBloc provideOrderBloc() {
    return registerAsSingleton(() => OrderBloc(
      dataModules.provideOrderRepository(),
    ));
  }

  @override
  RouterService provideRouterService() {
    return registerAsSingleton(() => RouterService(
      provideAppState(),
    ));
  }

  @override
  AppStateNotifier provideAppState() {
    return registerAsSingleton(() => AppStateNotifier(
      provideBikerInfoBloc(),
      provideGeoLocatorBloc(),
    ));
  }

  @override
  ScheduleBloc provideScheduleBloc() {
    return registerAsSingleton(() => ScheduleBloc(
      dataModules.provideScheduleRepository(),
    ));
  }
}
