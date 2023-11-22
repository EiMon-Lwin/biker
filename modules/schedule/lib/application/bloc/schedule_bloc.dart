import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule/domain/domain.dart';

part 'schedule_event.dart';
part 'schedule_state.dart';
part 'schedule_bloc.freezed.dart';

class ScheduleBloc extends Bloc<ScheduleEvent, ScheduleState> {
  final ScheduleRepository repository;
  ScheduleBloc(this.repository) : super(ScheduleStateInitial()) {
    on<LoadAllSchedulesEvent>(_onLoadAllSchedules);
    on<LoadCurrentSchedulesEvent>(_onLoadCurrentSchedles);
    on<LoadNextSchedulesEvent>(_onLoadNextSchedules);
  }

  FutureOr<void> _onLoadAllSchedules(
    LoadAllSchedulesEvent event,
    Emitter<ScheduleState> emit,
  ) async {
    add(LoadCurrentSchedulesEvent());
    add(LoadNextSchedulesEvent());
  }

  FutureOr<void> _onLoadCurrentSchedles(
    LoadCurrentSchedulesEvent event,
    Emitter<ScheduleState> emit,
  ) async {
    await repository.getAvailableSchedules()
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
    await repository.getNextSchedules()
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
}
