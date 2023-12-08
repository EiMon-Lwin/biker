import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule/domain/domain.dart';

import '../schedule_check_in/schedule_check_in_bloc.dart';

part 'schedule_event.dart';
part 'schedule_state.dart';
part 'schedule_bloc.freezed.dart';

class ScheduleBloc extends Bloc<ScheduleEvent, ScheduleState> {
  final GetAvailableSchedulesUseCase getAvailableSchedulesUseCase;
  final GetNextSchedulesUseCase getNextSchedulesUseCase;
  final CheckOutScheduleUseCase checkOutScheduleUseCase;
  final ScheduleCheckInBloc scheduleCheckInBloc;

  ScheduleBloc(
    this.getAvailableSchedulesUseCase,
    this.getNextSchedulesUseCase,
    this.checkOutScheduleUseCase,
    this.scheduleCheckInBloc,
  ) : super(ScheduleStateInitial()) {
    on<LoadAllSchedulesEvent>(_onLoadAllSchedules);
    on<LoadCurrentSchedulesEvent>(_onLoadCurrentSchedles);
    on<LoadNextSchedulesEvent>(_onLoadNextSchedules);
    on<CheckOutScheduleEvent>(_onCheckOutScheduleEvent);
    on<RegisterCheckOutTimerEvent>(_onRegisterCheckOutTimerEvent);
  }

  FutureOr<void> _onLoadAllSchedules(
    LoadAllSchedulesEvent event,
    Emitter<ScheduleState> emit,
  ) async {
    emit(ScheduleState.initial());
    add(LoadCurrentSchedulesEvent());
    add(LoadNextSchedulesEvent());
  }

  FutureOr<void> _onLoadCurrentSchedles(
    LoadCurrentSchedulesEvent event,
    Emitter<ScheduleState> emit,
  ) async {
    await getAvailableSchedulesUseCase()
      ..onError((error) {})
      ..onSuccess((data) {
        emit(ScheduleState.ready(
          currentSchedules: data,
          nextSchedules: state is ScheduleStateReady
              ? (state as ScheduleStateReady).nextSchedules
              : [],
        ));
      });
  }

  FutureOr<void> _onLoadNextSchedules(
    LoadNextSchedulesEvent event,
    Emitter<ScheduleState> emit,
  ) async {
    await getNextSchedulesUseCase()
      ..onError((error) {})
      ..onSuccess((data) {
        emit(ScheduleState.ready(
          nextSchedules: data,
          currentSchedules: state is ScheduleStateReady
              ? (state as ScheduleStateReady).nextSchedules
              : [],
        ));
      });
  }

  FutureOr<void> _onCheckOutScheduleEvent(
    CheckOutScheduleEvent event,
    Emitter<ScheduleState> emit,
  ) async {
    scheduleCheckInBloc.add(ScheduleCheckInEvent.checkIn(
      event.scheduleId,
    ));
  }

  FutureOr<void> _onRegisterCheckOutTimerEvent(
    RegisterCheckOutTimerEvent event,
    Emitter<ScheduleState> emit,
  ) async {
    scheduleCheckInBloc.add(ScheduleCheckInEvent.registerCheckOutTimer(
      event.schedule,
    ));
  }
}
