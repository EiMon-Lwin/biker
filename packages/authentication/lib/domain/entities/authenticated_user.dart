import 'access_token.dart';
import 'registered_user.dart';

class AuthenticatedUserEntity extends AccessTokenEntity {
  final RegisteredUserEntity user;

  const AuthenticatedUserEntity({
    required this.user,
    required final String accessToken,
    required final String refreshToken,
    required final int expirationDays,
  }) : super(
          accessToken: accessToken,
          refreshToken: refreshToken,
          expirationDays: expirationDays,
        );
}
