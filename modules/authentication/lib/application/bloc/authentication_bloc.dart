import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:env_jar/env_jar.dart';
import 'package:meta/meta.dart';
import 'package:token_jar/token_jar.dart';

import '../../domain/domain.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final TokenJar tokenStorage;
  final EnvJar envManager;
  final AuthenticationRepository repository;

  AuthenticationBloc(
    this.envManager,
    this.tokenStorage,
    this.repository,
  ) : super(AuthenticationInitial()) {
    on<AuthenticateUserEvent>(_onAuthenticateUserEvent);
    on<RefreshAccessTokenEvent>(_onRefreshAccessTokenEvent);
  }

  FutureOr<void> _onAuthenticateUserEvent(
    AuthenticateUserEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    final result = await repository.authenticateUser(
      phoneNumber: event.phoneNumber,
      password: event.password ?? envManager.masterKey,
    );

    if (result is DataSuccess<AuthenticatedUserEntity>) {
      await _onAuthenticated(result.data!, emit);
    } else {
      emit(AuthenticationFailed());
    }
  }

  FutureOr<void> _onRefreshAccessTokenEvent(
    RefreshAccessTokenEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    final refreshResult = await repository.refreshAccessToken(
      accessToken: event.accessToken,
      refreshToken: event.refreshToken,
    );

    final userResult = await repository.getSavedAuthenticatedUser();

    if (refreshResult is DataSuccess && userResult is DataSuccess) {
      await _onAuthenticated(
        AuthenticatedUserEntity(
          user: userResult.data!.user,
          accessToken: refreshResult.data!.accessToken,
          refreshToken: refreshResult.data!.refreshToken,
          expirationDays: refreshResult.data!.expirationDays,
        ),
        emit,
      );
    } else {
      emit(AuthenticationFailed());
    }
  }

  Future<void> _onAuthenticated(
    AuthenticatedUserEntity data,
    Emitter<AuthenticationState> emit,
  ) async {
    if (data.accessToken.isNotEmpty && data.refreshToken.isNotEmpty) {
      await repository.saveAuthenticatedUser(data);
      await tokenStorage.save(data);
      emit(AuthenticationSuccess(data));
    } else {
      emit(AuthenticationFailed());
    }
  }
}
