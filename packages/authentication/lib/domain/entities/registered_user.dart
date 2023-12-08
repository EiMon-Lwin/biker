abstract class RegisteredUserEntity {
  final String id;
  final String userName;
  final String? email;
  final String? phoneNumber;
  final String? fullName;
  final String? profileImage;
  final String? userRole;

  const RegisteredUserEntity({
    required this.id,
    required this.userName,
    this.email,
    this.phoneNumber,
    this.fullName,
    this.profileImage,
    this.userRole,
  });
}
