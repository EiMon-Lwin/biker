class HttpStatusException implements Exception {
  final int statusCode;
  final String? message;
  final String? metaMessage;

  const HttpStatusException({
    required this.statusCode,
    this.message,
    this.metaMessage,
  });
}
