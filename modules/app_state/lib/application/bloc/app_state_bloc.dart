import 'dart:async';

import 'package:authentication/authentication.dart';
import 'package:biker_info/application/biker_info_application.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geo_locator/bloc/geo_locator_bloc.dart';
import 'package:token_jar/token_jar.dart';

part 'app_state_event.dart';
part 'app_state_state.dart';
part 'app_state_bloc.freezed.dart';

class AppStateBloc extends Bloc<AppStateEvent, AppStateState> {
  final AuthenticationBloc authenticationBloc;
  final BikerInfoBloc bikerInfoBloc;
  final GeoLocatorBloc geoLocatorBloc;
  final TokenJar tokenJar;

  AppStateBloc(
    this.authenticationBloc,
    this.bikerInfoBloc,
    this.geoLocatorBloc,
    this.tokenJar,
  ) : super(const AppStateInitial()) {
    on<AppInitializeEvent>(_initialize);
    on<AppReadyEvent>(_onAppStateReady);
    authenticationBloc.stream.listen(_onAuthStateChanged);
    bikerInfoBloc.stream.listen(_onBikerInfoState);
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
      add(const AppReadyEvent());
    }
  }

  FutureOr<void> _onAppStateReady(event, Emitter<AppStateState> emit) {
    emit(const AppStateState.ready());
  }

  void _onAuthStateChanged(AuthenticationState event) {
    bikerInfoBloc.add(GetBikerInfoEvent());
    geoLocatorBloc.add(const CheckLocationEnabledEvent());
  }
}