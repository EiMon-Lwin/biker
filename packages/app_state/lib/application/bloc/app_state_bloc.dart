import 'dart:async';

import 'package:authentication/authentication.dart';
import 'package:biker_info/application/biker_info_application.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geo_locator/geo_locator.dart';
import 'package:schedule/schedule.dart';
import 'package:token_jar/token_jar.dart';

part 'app_state_event.dart';
part 'app_state_state.dart';
part 'app_state_bloc.freezed.dart';

class AppStateBloc extends Bloc<AppStateEvent, AppStateState> {
  final AuthenticationBloc authenticationBloc;
  final BikerInfoBloc bikerInfoBloc;
  final GeoLocatorBloc geoLocatorBloc;
  final ScheduleCheckInBloc scheduleduleCheckInBloc;
  final TokenJar tokenJar;

  AppStateBloc(
    this.authenticationBloc,
    this.bikerInfoBloc,
    this.geoLocatorBloc,
    this.scheduleduleCheckInBloc,
    this.tokenJar,
  ) : super(const AppStateInitial()) {
    on<AppInitializeEvent>(_initialize);
    on<AppReadyEvent>(_onAppStateReady);
    authenticationBloc.stream.distinct().listen(_onAuthStateChanged);
    bikerInfoBloc.stream.distinct().listen(_onBikerInfoState);
    add(AppStateEvent.initialize());
  }

  FutureOr<void> _initialize(
    AppInitializeEvent event,
    Emitter<AppStateState> emit,
  ) async {
    await tokenJar.get()
      ..onSuccess((data) {
        authenticationBloc.add(RefreshAccessTokenEvent(
          accessToken: data.accessToken,
          refreshToken: data.refreshToken,
        ));
      })
      ..onError((error) {
        add(const AppReadyEvent());
      });
  }

  void _onBikerInfoState(BikerInfoState event) {
    if (event is BikerInfoError || event is BikerInfoReady) {
      if (event is BikerInfoReady) {
        scheduleduleCheckInBloc.add(ScheduleCheckInEvent.scheduleCheckOutAlarm(
          event.bikerInfo.checkInSchedule,
        ));
      }
      add(const AppReadyEvent());
    }
  }

  FutureOr<void> _onAppStateReady(event, Emitter<AppStateState> emit) {
    emit(const AppStateState.ready());
  }

  void _onAuthStateChanged(AuthenticationState event) {
    print("AUTHENTICATION BLOC STATE CHANGED - ${event.runtimeType}");
    if (event is AuthenticationSuccess || event is AuthenticationFailed) {
      bikerInfoBloc.add(GetBikerInfoEvent());
      geoLocatorBloc.add(const CheckLocationEnabledEvent());
    }
  }
}
