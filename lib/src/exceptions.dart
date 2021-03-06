class ServerException implements Exception {
  ServerException(this.statusCode, this.message);

  final String message;
  final int statusCode;

  @override
  String toString() {
    return 'ServerException(message: $message, statusCode: $statusCode)';
  }
}
