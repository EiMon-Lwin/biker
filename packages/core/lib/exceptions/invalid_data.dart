class InvalidDataException implements Exception {
  final Object? data;

  const InvalidDataException({
    this.data,
  });
}
