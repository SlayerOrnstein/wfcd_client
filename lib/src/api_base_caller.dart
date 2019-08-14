import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:wfcd_api_wrapper/src/utils.dart';

enum Platforms { pc, ps4, xb1, swi }

class ApiBase {
  ApiBase(this.client) : assert(client != null);

  final http.Client client;

  static const String _baseUrl = 'https://api.warframestat.us';

  Future<dynamic> get(Platforms platform) async {
    final response = await http.get(
      '$_baseUrl/${platformToString(platform)}',
      headers: {'Accept-Language': 'en'},
    );

    if (response.statusCode != 200) {
      throw Exception(
          response?.statusCode ?? 'Error connecting to api.warframestat.us');
    }

    return json.decode(await response.body);
  }
}
