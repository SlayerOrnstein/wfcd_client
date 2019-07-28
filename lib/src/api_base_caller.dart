import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'exceptions.dart';

class ApiBase {
  static const String _baseUrl = 'https://api.warframestat.us';

  Future<dynamic> get(String path) async {
    try {
      final response = await http.get(_baseUrl + path);
      return _returnResponse(response);
    } on SocketException {
      throw Exception();
    }
  }

  dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.body.toString());
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
