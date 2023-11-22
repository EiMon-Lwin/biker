import 'package:app_state/app_state.dart';
import 'package:biker_info/biker_info.dart';
import 'package:flutter/foundation.dart';
import 'package:geo_locator/bloc/geo_locator_bloc.dart';

class AppStateNotifier extends ChangeNotifier {
  final AppStateBloc appState;
  final BikerInfoBloc bikerInfoBloc;
  final GeoLocatorBloc geoLocatorBloc;
  final bool isDevEnv;

  AppStateNotifier(
    this.appState,
    this.bikerInfoBloc,
    this.geoLocatorBloc, {
    this.isDevEnv = true,
  }) {
    _apiConfigured = isDevEnv ? false : true;
    appState.stream.listen(_onAppStateChanged);
    bikerInfoBloc.stream.listen(_onUserInfoChanged);
    geoLocatorBloc.stream.listen(_onGeoLocationStateChanged);
  }

  // static const String _logInKey = "LOGIN_KEY";
  // static const String _onBoardKey = "ONBOARD_KEY";

  bool _loginState = false;
  bool _apiConfigured = false;
  bool _initialized = false;
  bool _isLocationTurnOn = false;
  bool _onboarding = false;
  bool _hasLocationPermission = false;

  bool get loginState => _loginState;
  bool get apiConfigured => _apiConfigured;
  bool get isLocationTurnOn => _isLocationTurnOn;
  bool get hasLocationPermission => _hasLocationPermission;
  bool get initialized => _initialized;
  bool get onboarding => _onboarding;

  set loginState(bool state) {
    _loginState = state;
    notifyListeners();
  }

  set apiConfigured(bool state) {
    _apiConfigured = state;
    notifyListeners();
  }

  set initialized(bool value) {
    _initialized = value;
    notifyListeners();
  }

  set hasLocationPermission(bool value) {
    _hasLocationPermission = value;
    notifyListeners();
  }

  set onboarding(bool value) {
    _onboarding = value;
    notifyListeners();
  }

  set isLocationTurnOn(bool value) {
    _isLocationTurnOn = value;
    notifyListeners();
  }

  void _onUserInfoChanged(BikerInfoState? state) {
    final isLoggedIn = state is BikerInfoReady;
    if (isLoggedIn != _loginState || !_loginState) {
      loginState = isLoggedIn;
    }
  }

  void _onGeoLocationStateChanged(GeoLocatorState state) {
    isLocationTurnOn = state.isLocationTurnOn;
    hasLocationPermission = state.isPermissionEnabled;
  }

  void _onAppStateChanged(AppStateState event) {
    initialized = event is AppStateReady;
  }
}
