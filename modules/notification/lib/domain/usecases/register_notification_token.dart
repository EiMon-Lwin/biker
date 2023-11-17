import 'package:core/core.dart';

import '../entities/entities.dart';
import '../repositories/repositories.dart';

class RegisterNotificationTokenUsecase implements UseCase<DataState<ResponseMessageEntity>, RegisterNotificationTokenUsecaseParms> {
  final NotificationRepository repository;

  const RegisterNotificationTokenUsecase(this.repository);

  @override
  Future<DataState<ResponseMessageEntity>> call(RegisterNotificationTokenUsecaseParms params) async {
    return repository.registerNotificationToken(
      userId: params.userId,
      role: params.role,
      notificationToken: params.notificationToken,
      platform: params.platform,
    );
  }
}

class RegisterNotificationTokenUsecaseParms {
  final String userId;
  final String role;
  final String notificationToken;
  final String platform;

  const RegisterNotificationTokenUsecaseParms({
    required this.userId,
    required this.role,
    required this.notificationToken,
    required this.platform,
  });
}
