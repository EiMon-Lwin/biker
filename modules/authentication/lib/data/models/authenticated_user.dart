import '../../domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'registered_user.dart';

part 'authenticated_user.freezed.dart';
part 'authenticated_user.g.dart';

@freezed
class AuthenticatedUserModel extends AuthenticatedUserEntity with _$AuthenticatedUserModel {
  const factory AuthenticatedUserModel({
    @JsonKey(name: "access_token") required final String accessToken,
    @JsonKey(name: "refresh_token") required final String refreshToken,
    @JsonKey(name: "expiration") required final int expirationDays,
    @JsonKey(name: "user") required final RegisteredUserModel user,
  }) = _AuthenticatedUserModel;

  factory AuthenticatedUserModel.fromJson(Map<String, dynamic> data) =>
      _$AuthenticatedUserModelFromJson(data);

  factory AuthenticatedUserModel.fromEntity(AuthenticatedUserEntity entity) {
    return AuthenticatedUserModel(
      accessToken: entity.accessToken,
      refreshToken: entity.refreshToken,
      expirationDays: entity.expirationDays,
      user: RegisteredUserModel.fromEntity(entity.user),
    );
  }
}
