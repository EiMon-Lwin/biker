part of 'home_page_bloc.dart';

@freezed
class HomePageEvent with _$HomePageEvent {
  const factory HomePageEvent.started() = _Started;

  const factory HomePageEvent.checkInButtonPress({
    required void Function() onNavigateToCheckInPage,
  }) = _CheckInButtonPressed;
}