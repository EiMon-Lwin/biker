class AccessTokenEntity {
  final String accessToken;
  final String refreshToken;
  final int expirationDays;

  const AccessTokenEntity({
    required this.accessToken,
    required this.refreshToken,
    required this.expirationDays,
  });
}
