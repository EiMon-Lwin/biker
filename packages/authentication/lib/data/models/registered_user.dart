import '../../domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'registered_user.freezed.dart';
part 'registered_user.g.dart';

@freezed
abstract class RegisteredUserModel extends RegisteredUserEntity with _$RegisteredUserModel {
  const factory RegisteredUserModel({
    @JsonKey(name: "id") required final String id,
    @JsonKey(name: "userName") required final String userName,
    @JsonKey(name: "email") final String? email,
    @JsonKey(name: "phoneNumber") final String? phoneNumber,
    @JsonKey(name: "fullName") final String? fullName,
    @JsonKey(name: "profileImage") final String? profileImage,
    @JsonKey(name: "userRole") final String? userRole,
  }) = _RegisteredUserModel;

  factory RegisteredUserModel.fromJson(Map<String, dynamic> data) =>
      _$RegisteredUserModelFromJson(data);

  factory RegisteredUserModel.fromEntity(RegisteredUserEntity entity) {
    return RegisteredUserModel(
      id: entity.id,
      userName: entity.userName,
      email: entity.email,
      phoneNumber: entity.phoneNumber,
      fullName: entity.fullName,
      profileImage: entity.profileImage,
      userRole: entity.userRole,
    );
  }
}
