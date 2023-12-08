part of 'app_state_bloc.dart';

@freezed
class AppStateState with _$AppStateState {
  const factory AppStateState.initial() = AppStateInitial;
  const factory AppStateState.ready() = AppStateReady;
}
