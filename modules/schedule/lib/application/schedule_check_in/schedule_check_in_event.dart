part of 'schedule_check_in_bloc.dart';

@freezed
class ScheduleCheckInEvent with _$ScheduleCheckInEvent {
  const factory ScheduleCheckInEvent.checkIn(String filePath) = _CheckIn;
  const factory ScheduleCheckInEvent.checkOut(String scheduleId) = _CheckOut;
}