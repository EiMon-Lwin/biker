import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule/schedule.dart';

part 'schedule_check_in_event.dart';
part 'schedule_check_in_state.dart';
part 'schedule_check_in_bloc.freezed.dart';

class ScheduleCheckInBloc
    extends Bloc<ScheduleCheckInEvent, ScheduleCheckInState> {
  final ScheduleRepository repository;

  ScheduleCheckInBloc(this.repository) : super(ScheduleCheckInState.checkedIn()) {
    on<_CheckIn>(_onScheduleCheckInEvent);
  }

  FutureOr<void> _onScheduleCheckInEvent(
    _CheckIn event,
    Emitter<ScheduleCheckInState> emit,
  ) async {
    await repository.checkInSchedule(event.filePath)
      ..onError((error) => emit(_CheckInError()))
      ..onSuccess((data) => emit(_CheckedIn()));
  }
}
