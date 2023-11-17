part of 'authentication_bloc.dart';

@immutable
sealed class AuthenticationState {
  const AuthenticationState();
}

final class AuthenticationInitial extends AuthenticationState {}

final class AuthenticationSuccess extends AuthenticationState {
  final AuthenticatedUserEntity authenticatedUser;

  const AuthenticationSuccess(this.authenticatedUser);
}

final class AuthenticationFailed extends AuthenticationState {}

