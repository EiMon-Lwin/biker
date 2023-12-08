part of 'resend_pin_button_bloc.dart';

@freezed
class ResendPinButtonEvent with _$ResendPinButtonEvent {
  const factory ResendPinButtonEvent.start() = StartButtonEvent;
  const factory ResendPinButtonEvent.stop() = StopButtonEvent;
  const factory ResendPinButtonEvent.reset() = ResetButtonEvent;
}