class HttpStatusException implements Exception {
  final int statusCode;
  final String? message;

  const HttpStatusException({
    required this.statusCode,
    this.message,
  });
}
