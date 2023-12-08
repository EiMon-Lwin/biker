part of 'notification_bloc.dart';

@immutable
sealed class NotificationState {}

final class NotificationInitial extends NotificationState {}

final class NotificationLoading extends NotificationState {}

final class NotificationReady implements NotificationState {
  final List<OfflineNotificationEntity> notifications;

  const NotificationReady({required this.notifications});
}
