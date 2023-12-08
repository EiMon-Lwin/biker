part of 'notification_bloc.dart';

@immutable
sealed class NotificationEvent {}

class IncomingSocketMessageEvent implements NotificationEvent {
  final List<Object?> args;

  const IncomingSocketMessageEvent(this.args);
}

class RegisterNotificationTokenEvent implements NotificationEvent {
  final String notificationToken;
  final String userId;
  final String role;
  final String platform;

  const RegisterNotificationTokenEvent({
    required this.notificationToken,
    required this.userId,
    required this.role,
    required this.platform,
  });
}
