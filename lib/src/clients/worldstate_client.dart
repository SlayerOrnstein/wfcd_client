import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:warframe_items_model/warframe_items_model.dart';
import 'package:wfcd_client/enums.dart';
import 'package:wfcd_client/src/utils/converter_utils.dart';
import 'package:wfcd_client/src/utils/exception_handler.dart';
import 'package:wfcd_client/src/utils/exceptions.dart';
import 'package:worldstate_api_model/misc.dart';
import 'package:worldstate_api_model/worldstate_models.dart';

class WorldstateClient {
  const WorldstateClient();

  static const String _baseUrl = 'https://api.warframestat.us';

  Future<Worldstate> getWorldstate(Platforms platform) async {
    final path = platformToString(platform);
    final response = await _warframestat(path) as Map<String, dynamic>;

    return Worldstate.fromJson(response);
  }

  Future<List<ItemObject>> searchItems(String searchTerm) async {
    final term = searchTerm.toLowerCase();
    final response = await _warframestat('items/search/$term') as List<dynamic>;

    return toItemObjects(response);
  }

  Future<List<SynthTarget>> synthTargets() async {
    final response = await _warframestat('synthTargets') as List<dynamic>;

    return toSynthTargets(response);
  }

  Future<dynamic> _warframestat(String path) async {
    try {
      final response = await http.get('$_baseUrl/$path');

      return excpetionHandler(response);
    } on SocketException {
      throw const DeviceOffline();
    }
  }
}
