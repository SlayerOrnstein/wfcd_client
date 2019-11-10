import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'exceptions.dart';

class ApiBase {
  const ApiBase(this.client);

  final http.Client client;

  static const String _baseUrl = 'https://api.warframestat.us';

  Future<dynamic> getResponse(String path, {String lang}) async {
    Map<String, String> headers;

    if (lang != null) {
      if (lang.length < 2) throw InvalidLanguageCode(lang);

      headers = {'Accept-Language': lang};
    }

    try {
      final response = await client.get('$_baseUrl/$path', headers: headers);

      return _returnResponse(response);
    } on SocketException {
      throw DeviceOffline();
    }
  }

  dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        final responseJson = json.decode(response.body);
        return responseJson;
      case 525:
        throw CloudflareException();
      default:
        throw FetchDataException('Unknown error occured contacting server');
    }
  }
}
