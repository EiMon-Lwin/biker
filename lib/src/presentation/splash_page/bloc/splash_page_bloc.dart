import 'dart:async';

import 'package:biker_info/application/biker_info_application.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geo_locator/bloc/geo_locator_bloc.dart';

part 'splash_page_event.dart';
part 'splash_page_state.dart';
part 'splash_page_bloc.freezed.dart';

class SplashPageBloc extends Bloc<SplashPageEvent, SplashPageState> {
  final BikerInfoBloc bikerInfoBloc;
  final GeoLocatorBloc geoLocatorBloc;

  SplashPageBloc(
    this.bikerInfoBloc,
    this.geoLocatorBloc,
  ) : super(const SplashPageInitial()) {
    on<SplashPageIniitalizeEvent>(_initialize);
    on<SplashPageReadyEvent>(_onSplashPageReady);
    bikerInfoBloc.stream.listen(_onBikerInfoState);
  }

  FutureOr<void> _initialize(
    SplashPageIniitalizeEvent event,
    Emitter<SplashPageState> emit,
  ) async {
    bikerInfoBloc.add(GetBikerInfoEvent());
    geoLocatorBloc.add(const CheckLocationEnabledEvent());
  }

  void _onBikerInfoState(BikerInfoState event) {
    if(event is BikerInfoError || event is BikerInfoReady) {
      add(const SplashPageReadyEvent());
    }
  }

  FutureOr<void> _onSplashPageReady(event, Emitter<SplashPageState> emit) {
  }
}
