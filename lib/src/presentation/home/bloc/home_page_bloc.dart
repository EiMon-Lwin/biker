import 'dart:async';

import 'package:authentication/authentication.dart';
import 'package:biker_info/biker_info.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:order/application/bloc/order_bloc.dart';
import 'package:schedule/application/schedule_bloc/schedule_bloc.dart';
import 'package:schedule/application/schedule_check_in/schedule_check_in_bloc.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';
part 'home_page_bloc.freezed.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  final AuthenticationBloc authenticationBloc;
  final BikerInfoBloc bikerInfoBloc;
  final ScheduleBloc scheduleBloc;
  final OrderBloc orderBloc;
  final ScheduleCheckInBloc checkInBloc;

  HomePageBloc(
    this.authenticationBloc,
    this.bikerInfoBloc,
    this.scheduleBloc,
    this.orderBloc,
    this.checkInBloc,
  ) : super(const _Initial()) {
    on<_Started>(_onStartedEvent);
    on<_CheckInButtonPressed>(_onCheckInButtonPressed);
  }

  FutureOr<void> _onStartedEvent(
      _Started event, Emitter<HomePageState> emit) async {
    bikerInfoBloc.add(GetBikerInfoEvent());
    scheduleBloc.add(const ScheduleEvent.loadAllSchedules());

    if (authenticationBloc.state is AuthenticationSuccess) {
      orderBloc.add(LoadOrdersEvent(
        userId: (authenticationBloc.state as AuthenticationSuccess)
            .authenticatedUser
            .user
            .id,
        pageRows: 0,
        pageSize: 4,
      ));
    }
  }

  FutureOr<void> _onCheckInButtonPressed(
    _CheckInButtonPressed event,
    Emitter<HomePageState> emit,
  ) async {
    final state = bikerInfoBloc.state;
    if (state is BikerInfoReady) {
      final bikerInfo = state.bikerInfo;
      if (bikerInfo.checkInSchedule != null) {
        checkInBloc.add(ScheduleCheckInEvent.checkOut(
          bikerInfo.checkInSchedule!.scheduleId,
        ));
      } else {
        event.onNavigateToCheckInPage();
      }
    }
  }
}
