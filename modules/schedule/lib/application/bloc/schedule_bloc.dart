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
  }

  FutureOr<void> _onLoadCurrentSchedles(
    LoadCurrentSchedulesEvent event,
    Emitter<ScheduleState> emit,
  ) async {
  }

  FutureOr<void> _onLoadNextSchedules(
    LoadNextSchedulesEvent event,
    Emitter<ScheduleState> emit,
  ) async {
  }
}
