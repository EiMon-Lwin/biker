class Response<T> {
  final T? data;
  final int? statusCode;
  final String? statusMessage;
  final Map<String, List<String>> headers;
  final bool isRedirect;

  const Response({
    this.data,
    this.statusCode,
    this.statusMessage,
    required this.headers,
    required this.isRedirect,
  });
}
