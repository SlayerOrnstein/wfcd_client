import 'dart:convert';

import 'package:http/http.dart' as http;
import 'exceptions.dart';

class ApiBase {
  const ApiBase();

  static const String _baseUrl = 'https://api.warframestat.us';

  Future<dynamic> getResponse(String path, {String lang}) async {
    Map<String, String> headers;

    if (lang != null) {
      if (lang.length < 2) throw InvalidException('Not a valid lang id');

      headers = {'Accept-Language': lang};
    }

    final response = await http.get('$_baseUrl/$path', headers: headers);

    if (response.statusCode != 200) {
      throw FetchDataException(errorCode: response.statusCode);
    }

    return json.decode(await response.body);
  }
}
