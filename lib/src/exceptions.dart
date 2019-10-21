class NetworkException implements Exception {
  NetworkException([this._message]);

  final String _message;

  @override
  String toString() {
    return '$_message';
  }
}

class FetchDataException extends NetworkException {
  FetchDataException({String message})
      : super(message ?? 'Error connecting to api.warframestat.us');
}

class UnknownException extends NetworkException {
  UnknownException([int errorCode]) : super('Unknown error returned');
}

class InvalidException implements Exception {
  InvalidException([this.message]);

  final String message;

  @override
  String toString() => message;
}
