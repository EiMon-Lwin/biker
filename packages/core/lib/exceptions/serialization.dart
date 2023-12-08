class SerializationException implements Exception {
  final Exception exception;

  const SerializationException(this.exception);
}
