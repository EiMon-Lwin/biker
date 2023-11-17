part of 'splash_page_bloc.dart';

@freezed
class SplashPageEvent with _$SplashPageEvent {
  const factory SplashPageEvent.initialize() = SplashPageIniitalizeEvent;
  const factory SplashPageEvent.ready() = SplashPageReadyEvent;
}