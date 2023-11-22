part of 'app_state_bloc.dart';

@freezed
class AppStateEvent with _$AppStateEvent {
  const factory AppStateEvent.initialize() = AppInitializeEvent;
  const factory AppStateEvent.ready() = AppReadyEvent;
}