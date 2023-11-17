import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/domain.dart';

part 'access_token.freezed.dart';
part 'access_token.g.dart';

@freezed
class AccessTokenModel extends AccessTokenEntity with _$AccessTokenModel {
  const factory AccessTokenModel({
    @JsonKey(name: "access_token") required final String accessToken,
    @JsonKey(name: "refresh_token") required final String refreshToken,
    @JsonKey(name: "expiration") required final int expirationDays,
  }) = _AccessTokenModel;

  factory AccessTokenModel.fromJson(Map<String, dynamic> data) =>
      _$AccessTokenModelFromJson(data);

  factory AccessTokenModel.fromEntity(AccessTokenEntity token) {
    return AccessTokenModel(
      accessToken: token.accessToken,
      refreshToken: token.refreshToken,
      expirationDays: token.expirationDays,
    );
  }
}
