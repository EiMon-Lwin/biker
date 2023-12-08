import 'package:core/core.dart';

import '../entities/entities.dart';

abstract class AuthenticationRepository {
  Future<DataState<RegisteredUserEntity>> registerUser({
    required final String fullName,
    required final String phone,
    required final String language,
    required final String? notiToken,
  });

  Future<DataState<AuthenticatedUserEntity>> authenticateUser({
    required final String phoneNumber,
    required final String password,
  });

  Future<DataState<AccessTokenEntity>> refreshAccessToken({
    required String accessToken,
    required String refreshToken,
  });

  Future<DataState<AuthenticatedUserEntity>> getSavedAuthenticatedUser();

  String get registeredUserStorageKey;
  Future<DataState<bool>> saveAuthenticatedUser(AuthenticatedUserEntity user);
}
