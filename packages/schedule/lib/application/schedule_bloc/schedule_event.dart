part of 'schedule_bloc.dart';

@freezed
class ScheduleEvent with _$ScheduleEvent {
  const factory ScheduleEvent.loadAllSchedules() = LoadAllSchedulesEvent;
  const factory ScheduleEvent.loadCurrentSchedules() = LoadCurrentSchedulesEvent;
  const factory ScheduleEvent.loadNextSchedules() = LoadNextSchedulesEvent;
  const factory ScheduleEvent.checkOutSchedule({
    required String scheduleId,
  }) = CheckOutScheduleEvent;

  const factory ScheduleEvent.checkInSchedule({
    required String filePath,
  }) = CheckInScheduleEvent;


  const factory ScheduleEvent.registerCheckOutTimer(
    ScheduleEntity schedule,
  ) = RegisterCheckOutTimerEvent;
}
