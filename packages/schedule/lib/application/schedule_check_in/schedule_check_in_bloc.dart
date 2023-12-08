import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule/domain/usecases/check_in_schedule.dart';
import 'package:schedule/domain/usecases/check_out_schedule.dart';

part 'schedule_check_in_event.dart';
part 'schedule_check_in_state.dart';
part 'schedule_check_in_bloc.freezed.dart';

class ScheduleCheckInBloc extends Bloc<ScheduleCheckInEvent, ScheduleCheckInState> {
  final CheckInScheduleUseCase checkInScheduleUseCase;
  final CheckOutScheduleUseCase checkOutScheduleUseCase;

  ScheduleCheckInBloc(
    this.checkInScheduleUseCase,
    this.checkOutScheduleUseCase,
  ) : super(ScheduleCheckInState.checkedIn()) {
    on<_CheckIn>(_onScheduleCheckInEvent);
    on<_CheckOut>(_onScheduleCheckOutEvent);
  }

  FutureOr<void> _onScheduleCheckInEvent(
    _CheckIn event,
    Emitter<ScheduleCheckInState> emit,
  ) async {
    await checkInScheduleUseCase(CheckInScheduleParams(
      filePath: event.filePath,
    ))
      ..onError((error) => emit(_CheckInError()))
      ..onSuccess((data) => emit(_CheckedIn()));
  }

  FutureOr<void> _onScheduleCheckOutEvent(
    _CheckOut event,
    Emitter<ScheduleCheckInState> emit,
  ) async {
    await checkOutScheduleUseCase(CheckOutScheduleParams(
      scheduleId: event.scheduleId,
    ));
  }

  // Timer? _checkOutTimer;
  // void _onRegisterCheckOutTimerEvent(
  //   RegisterCheckOutTimerEvent event,
  //   Emitter<ScheduleState> emit,
  // ) {
  //   _checkOutTimer?.cancel();
  //   final endScheduleDateTime = event.schedule.toDateTime();
  //   final isScheduleEndCommig = endScheduleDateTime.isAfter(DateTime.now());

  //   if(isScheduleEndCommig) {
  //     final durationDiff = endScheduleDateTime.difference(DateTime.now());
  //     _checkOutTimer = Timer(durationDiff, () {
  //       add(event)
  //     });
  //   }
  // }
}
