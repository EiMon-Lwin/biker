part of 'schedule_check_in_bloc.dart';

@freezed
class ScheduleCheckInState with _$ScheduleCheckInState {
  const factory ScheduleCheckInState.initial() = _Initial;

  const factory ScheduleCheckInState.checkedIn() = _CheckedIn;
  const factory ScheduleCheckInState.checkingIn() = _CheckingIn;
  const factory ScheduleCheckInState.checkInError() = _CheckInError;

  const factory ScheduleCheckInState.checkedOut() = _CheckedOut;
  const factory ScheduleCheckInState.checkingOut() = _CheckingOut;
  const factory ScheduleCheckInState.checkOutError() = _CheckOutError;
}
