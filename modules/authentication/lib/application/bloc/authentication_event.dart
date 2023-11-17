part of 'authentication_bloc.dart';

@immutable
sealed class AuthenticationEvent {}

class AuthenticateUserEvent implements AuthenticationEvent {
  final String phoneNumber;
  final String? password;

  const AuthenticateUserEvent({
    required this.phoneNumber,
    this.password,
  });
}

class RefreshAccessTokenEvent implements AuthenticationEvent {
  final String accessToken;
  final String refreshToken;

  const RefreshAccessTokenEvent({
    required this.accessToken,
    required this.refreshToken,
  });
}