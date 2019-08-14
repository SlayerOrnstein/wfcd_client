import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiBase {
  ApiBase(this.client) : assert(client != null);

  final http.Client client;

  static const String _baseUrl = 'https://api.warframestat.us';

  Future<dynamic> get(String path) async {
    final response =
        await http.get(_baseUrl + path, headers: {'Accept-Language': 'en'});

    if (response.statusCode != 200) {
      throw Exception(
          response?.statusCode ?? 'Error connecting to api.warframestat.us');
    }

    return json.decode(await response.body);
  }
}
