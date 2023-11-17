part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.sendPinCode() = _SendPinCode;
  const factory SignInEvent.verifyPinCode(String pin) =  _VerifyPinCode;
  const factory SignInEvent.sending() = _SendingPinCode;
  const factory SignInEvent.sendingFailed() = _SendingPinCodeFailed;
}