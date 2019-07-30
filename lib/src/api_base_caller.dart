import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'exceptions.dart';

class ApiBase {
  ApiBase(this.client) : assert(client != null);

  final http.Client client;

  static const String _baseUrl = 'https://api.warframestat.us';

  Future<dynamic> get(String path) async {
    try {
      final request = http.Request('GET', Uri.parse(_baseUrl + path));
      final response = await client.send(request);

      return _returnResponse(response);
    } on SocketException {
      throw Exception();
    }
  }

  Future<dynamic> _returnResponse(http.StreamedResponse response) async {
    switch (response.statusCode) {
      case 200:
        return json.decode(await response.stream.bytesToString());
      case 400:
        throw BadRequestException(await response.stream.bytesToString());
      case 403:
        throw UnauthorisedException(response.statusCode);
      case 500:
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
