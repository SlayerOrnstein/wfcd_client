class NetworkException implements Exception {
  NetworkException([this._message, this._errorCode]);

  final String _message;
  final int _errorCode;

  @override
  String toString() {
    return '$_message\nError code: $_errorCode';
  }
}

class FetchDataException extends NetworkException {
  FetchDataException({String message, int errorCode})
      : super(message ?? 'Error connecting to api.warframestat.us', errorCode);
}

class UnknownException extends NetworkException {
  UnknownException([int errorCode])
      : super('Unknown error returned', errorCode);
}

class InvalidException implements Exception {
  InvalidException([this.message]);

  final String message;

  @override
  String toString() => message;
}
