class DaoException implements Exception {
  final Exception exception;

  const DaoException(this.exception);
}