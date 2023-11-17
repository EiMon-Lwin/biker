part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.initial() = SignInStatInitial;
  const factory SignInState.sendingSms(String pin)  = SignInSendingSms;
  const factory SignInState.signingIn(String pin) = SignInSigningIn;
  const factory SignInState.success(String pin) = SignInSuccess;
  const factory SignInState.failed(String pin) = SignInFailed;
}
