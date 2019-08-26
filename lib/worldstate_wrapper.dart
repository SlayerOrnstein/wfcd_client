library worldstate_wrapper;

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:warframe_items_model/warframe_items_model.dart';
import 'package:wfcd_api_wrapper/src/utils.dart';
import 'package:worldstate_model/worldstate_models.dart';

enum Platforms { pc, ps4, xb1, swi }

class WorldstateApiWrapper {
  WorldstateApiWrapper(this.client);

  final http.Client client;

  static const String _baseUrl = 'https://api.warframestat.us';

  Future<Worldstate> getWorldstate(Platforms platform,
      {String lang = 'en'}) async {
    final Map<String, dynamic> json =
        await _get(platformToString(platform), lang: lang);

    return Worldstate.fromJson(json);
  }

  Future<List<ItemObject>> searchItems(String searchTerm) async {
    final response = await _get('items/search/${searchTerm.toLowerCase()}')
      ..cast<Map<String, dynamic>>();

    return response.map((i) {
      if (i['category'] == 'Warframe' ||
          i['category'] == 'Archwing' && !i.containsKey('damage')) {
        return Warframe.fromJson(i);
      }

      if (i['category'] == 'Primary' ||
          i['category'] == 'Secondry' ||
          i['category'] == 'Melee') {
        return Weapon.fromJson(i);
      }

      return BasicItem.fromJson(i);
    }).toList();
  }

  Future<dynamic> _get(String path, {String lang}) async {
    Map<String, String> headers;

    if (lang != null) {
      if (lang.length < 2) throw Exception('not a valid lang id');

      headers = {'Accept-Language': lang};
    }

    final response = await http.get('$_baseUrl/$path', headers: headers);

    if (response.statusCode != 200) {
      throw Exception(
          response?.statusCode ?? 'Error connecting to api.warframestat.us');
    }

    return json.decode(await response.body);
  }
}
