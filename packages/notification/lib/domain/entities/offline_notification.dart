import 'notification.dart';

class OfflineNotificationEntity extends NotificationEntity {
  final int id;
  final String entityType;
  final bool isRead;
  final bool isHandled;

  const OfflineNotificationEntity({
    final String? title,
    final String? body,
    final DateTime? date,
    final String? redirectUrl,
    final String? role,
    final String? type,
    final String? jsonData,
    final bool? read,
    this.id = 0,
    this.entityType = "NotificationEntity",
    this.isHandled = false,
    this.isRead = false,
  }) : super(
          title: title,
          body: body,
          date: date,
          redirectUrl: redirectUrl,
          role: role,
          type: type,
          jsonData: jsonData,
          read: read,
        );
}
