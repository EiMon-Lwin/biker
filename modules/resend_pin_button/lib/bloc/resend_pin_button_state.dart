part of 'resend_pin_button_bloc.dart';

@freezed
class ResendPinButtonState with _$ResendPinButtonState {
  const factory ResendPinButtonState.initial(int currentTicks) = ResendPinButtonInitial;
  const factory ResendPinButtonState.running(int currentTicks) = ResendPinButtonRunning;
  const factory ResendPinButtonState.resend(int currentTicks) = ResendPinButtonResend;
  const factory ResendPinButtonState.timeOut(int currentTicks) = ResendPinButtonTimeOut;
}
