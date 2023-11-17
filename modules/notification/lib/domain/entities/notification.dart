class NotificationEntity {
  final String? title;
  final String? body;
  final DateTime? date;
  final String? redirectUrl;
  final String? role;
  final String? type;
  final String? jsonData;
  final bool? read;

  const NotificationEntity({
    this.title,
    this.body,
    this.date,
    this.redirectUrl,
    this.role,
    this.type,
    this.jsonData,
    this.read,
  });
}
