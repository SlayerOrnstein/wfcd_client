library worldstate_wrapper;

import 'package:http/http.dart' as http;
import 'package:warframe_items_model/warframe_items_model.dart';
import 'package:wfcd_api_wrapper/src/api_base.dart';
import 'package:wfcd_api_wrapper/src/utils.dart';
import 'package:worldstate_model/worldstate_models.dart';

export 'src/exceptions.dart';

enum Platforms { pc, ps4, xb1, swi }

class WorldstateApiWrapper {
  WorldstateApiWrapper(http.Client client) : _baseApi = ApiBase(client);

  final _baseApi;

  Future<Worldstate> getWorldstate(Platforms platform,
      {String lang = 'en'}) async {
    final Map<String, dynamic> json =
        await _baseApi.getResponse(platformToString(platform), lang: lang);

    return Worldstate.fromJson(json);
  }

  Future<List<ItemObject>> searchItems(String searchTerm) async {
    final response =
        await _baseApi.getResponse('items/search/${searchTerm.toLowerCase()}')
          ..cast<Map<String, dynamic>>();

    return response.map<ItemObject>((i) {
      if (i['category'] == 'Warframes' ||
          i['category'] == 'Archwing' && !i.containsKey('damage')) {
        return Warframe.fromJson(i);
      }

      if (i['category'] == 'Primary' ||
          i['category'] == 'Secondary' ||
          i['category'] == 'Melee') {
        return Weapon.fromJson(i);
      }

      return BasicItem.fromJson(i);
    }).toList();
  }

  Future<ItemObject> getItem(String itemName) async {
    final search = await searchItems(itemName);

    return search.firstWhere(
      (i) => i.name == itemName,
      orElse: () => BasicItem(name: itemName, description: ''),
    );
  }
}
