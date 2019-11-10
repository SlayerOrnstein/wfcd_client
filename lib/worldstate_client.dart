library worldstate_wrapper;

import 'package:http/http.dart' as http;
import 'package:warframe_items_model/warframe_items_model.dart';
import 'package:wfcd_api_wrapper/src/api_base.dart';
import 'package:wfcd_api_wrapper/src/models/synth_target.dart';
import 'package:wfcd_api_wrapper/src/utils.dart';
import 'package:worldstate_model/worldstate_models.dart';

export 'src/exceptions.dart';

enum Platforms { pc, ps4, xb1, swi }

class WorldstateClient {
  WorldstateClient(http.Client client) : _baseApi = ApiBase(client);

  final ApiBase _baseApi;

  Future<Worldstate> getWorldstate(Platforms platform,
      {String lang = 'en'}) async {
    final Map<String, dynamic> json =
        await _baseApi.getResponse(platformToString(platform), lang: lang);

    return Worldstate.fromJson(json);
  }

  Future<List<ItemObject>> searchItems(String searchTerm) async {
    final request = 'items/search/${searchTerm.toLowerCase()}';
    final response = await _baseApi.getResponse(request)
      ..cast<Map<String, dynamic>>();

    return response.map<ItemObject>(jsonToItemObject).toList();
  }

  Future<ItemObject> getItem(String itemName) async {
    final search = await searchItems(itemName);

    return search.firstWhere(
      (i) => i.name == itemName,
      orElse: () => BasicItem(name: itemName, description: ''),
    );
  }

  Future<dynamic> getSynthTargets() async {
    final List targets = await _baseApi.getResponse('/synthTargets')
      ..cast<Map<String, dynamic>>();

    return targets.map<SynthTarget>((t) => SynthTarget.fromJson(t)).toList();
  }
}
