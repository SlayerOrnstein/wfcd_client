import 'package:equatable/equatable.dart';

class NetworkException extends Equatable implements Exception {
  NetworkException([this.message]);

  final String message;

  @override
  String toString() => message;

  @override
  List<Object> get props => [message];
}

class FetchDataException extends NetworkException {
  FetchDataException(String message) : super(message);
}

class DeviceOffline extends NetworkException {
  DeviceOffline() : super('Device is Offline');
}

class CloudflareException extends NetworkException {
  CloudflareException() : super('Server returned an Error');
}

class InvalidLanguageCode extends Equatable implements Exception {
  InvalidLanguageCode(this.languageCode);

  final String languageCode;

  @override
  String toString() => '$languageCode is not a valid language code';

  @override
  List<Object> get props => [languageCode];
}
