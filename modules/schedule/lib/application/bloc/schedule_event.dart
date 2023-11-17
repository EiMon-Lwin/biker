part of 'schedule_bloc.dart';

@freezed
class ScheduleEvent with _$ScheduleEvent {
  const factory ScheduleEvent.loadAllSchedules() = LoadAllSchedulesEvent;
  const factory ScheduleEvent.loadCurrentSchedules() = LoadCurrentSchedulesEvent;
  const factory ScheduleEvent.loadNextSchedules() = LoadNextSchedulesEvent;
}