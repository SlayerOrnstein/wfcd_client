class NetworkException implements Exception {
  NetworkException([this.message]);

  final String message;

  @override
  String toString() => message;
}

class FetchDataException extends NetworkException {
  FetchDataException(String message) : super(message);
}

class CloudflareException extends NetworkException {
  CloudflareException() : super('Server returned an Error');
}

class InvalidException implements Exception {
  InvalidException([this.message]);

  final String message;

  @override
  String toString() => message;
}
