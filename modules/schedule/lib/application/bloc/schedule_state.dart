part of 'schedule_bloc.dart';

@freezed
class ScheduleState with _$ScheduleState {
  const factory ScheduleState.initial() = ScheduleStateInitial;
  const factory ScheduleState.ready(
    List<ScheduleEntity> currentSchedules,
    List<ScheduleEntity> nextSchedules
  ) = ScheduleStateReady;
  const factory ScheduleState.error() = ScheduleStateError;
  const factory ScheduleState.networkError() = ScheduleStateNetworkError;
}
