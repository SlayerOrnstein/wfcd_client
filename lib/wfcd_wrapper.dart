library worldstate_wrapper;

import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:warframe_items_model/warframe_items_model.dart';

import 'package:wfcd_api_wrapper/src/models/synth_target.dart';
import 'package:wfcd_api_wrapper/src/utils/converter_utils.dart';
import 'package:worldstate_model/worldstate_models.dart';

import 'src/utils/enums.dart';
import 'src/utils/exceptions.dart';

export 'src/utils/enums.dart';
export 'src/utils/exceptions.dart';

class WfcdWrapper {
  /// Retrives the lastest worldstate
  Future<Worldstate> getWorldstate(Platforms platform) async {
    final path = platformToString(platform);
    final response = await _warframestat(path);

    return Worldstate.fromJson(json.decode(response));
  }

  /// Searchs warframe items
  Future<List<ItemObject>> searchItems(String searchTerm) async {
    final response = await _warframestat('search/$searchTerm');

    return jsonToItemObjects(response);
  }

  Future<List<SynthTarget>> synthTargets() async {
    final response = await _warframestat('synthTargets');

    return jsonToTargets(response);
  }

  /// Retrives the latest timestamp generated by WFCD
  Future<DateTime> dropsTimestamp() async {
    final info = json.decode(await _warframestatDrops('info.json'));

    return DateTime.fromMillisecondsSinceEpoch(info['timestamp']);
  }

  /// Downloads the latest avialable version of the warframe drop table
  Future<void> downloadDropTable(File file) async {
    final response = await _warframestatDrops('all.slim.json');

    await file.writeAsString(response);
  }

  Future<String> _warframestat(String path) async {
    try {
      final response = await http.get('https://api.warframestat.us/$path');

      return response.body;
    } on SocketException {
      throw const DeviceOffline();
    }
  }

  Future<String> _warframestatDrops(String path) async {
    try {
      final response =
          await http.get('https://drops.warframestat.us/data/$path');

      if (response.statusCode != 200)
        return _throwException(response.statusCode);

      return response.body;
    } on SocketException {
      throw const DeviceOffline();
    }
  }

  dynamic _throwException(int statusCode) {
    switch (statusCode) {
      case 525:
        throw const CloudflareException();
      default:
        throw const FetchDataException(
            'Unknown error occured contacting server');
    }
  }
}
