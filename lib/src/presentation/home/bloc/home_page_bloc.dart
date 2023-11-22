import 'dart:async';

import 'package:authentication/authentication.dart';
import 'package:biker_info/biker_info.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:order/application/bloc/order_bloc.dart';
import 'package:schedule/application/bloc/schedule_bloc.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';
part 'home_page_bloc.freezed.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  final AuthenticationBloc authenticationBloc;
  final BikerInfoBloc bikerInfoBloc;
  final ScheduleBloc scheduleBloc;
  final OrderBloc orderBloc;

  HomePageBloc(
    this.authenticationBloc,
    this.bikerInfoBloc,
    this.scheduleBloc,
    this.orderBloc,
  ) : super(const _Initial()) {
    on<_Started>(_onStartedEvent);
  }

  FutureOr<void> _onStartedEvent(
      _Started event, Emitter<HomePageState> emit) async {
    bikerInfoBloc.add(GetBikerInfoEvent());
    scheduleBloc.add(const ScheduleEvent.loadAllSchedules());

    if (authenticationBloc.state is AuthenticationSuccess) {
      orderBloc.add(LoadOrdersEvent(
        userId: (authenticationBloc.state as AuthenticationSuccess).authenticatedUser.user.id,
        pageRows: 0,
        pageSize: 4,
      ));
    }
  }
}
