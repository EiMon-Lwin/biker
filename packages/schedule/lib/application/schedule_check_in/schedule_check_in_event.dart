part of 'schedule_check_in_bloc.dart';

@freezed
class ScheduleCheckInEvent with _$ScheduleCheckInEvent {
  const factory ScheduleCheckInEvent.checkIn(String filePath) = _CheckIn;
  const factory ScheduleCheckInEvent.checkOut(String scheduleId) = _CheckOut;

  const factory ScheduleCheckInEvent.checkInSchedule({
    required String filePath,
  }) = _CheckInSchedule;

  const factory ScheduleCheckInEvent.registerCheckOutTimer(
    ScheduleEntity schedule,
  ) = _RegisterCheckOutTimer;

  const factory ScheduleCheckInEvent.scheduleCheckOutAlarm(
    ScheduleEntity? checkInSchedule,
  ) = _ScheduleCheckOutAlarm;
}
