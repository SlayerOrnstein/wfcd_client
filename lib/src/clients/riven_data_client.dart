import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:wfcd_client/enums.dart';
import 'package:wfcd_client/src/utils/converter_utils.dart';
import 'package:worldstate_api_model/misc.dart';

class RivenDataClient {
  const RivenDataClient(this.rivenData);

  final File rivenData;

  static const _baseUrl = 'https://api.warframestat.us';

  Future<void> downloadRivenData(Platforms platform) async {
    final _platform = platformToString(platform);
    final response = await http.get('$_baseUrl/$_platform/rivens');

    await rivenData.writeAsString(response.body);
  }

  Future<RivenData> getArchgunRivenData(String key) async {
    final archguns = await _getCategoryRivenData('Archgun');

    return archguns[key];
  }

  Future<RivenData> getKitgunRivenData(String key) async {
    final kitguns = await _getCategoryRivenData('Kitgun');

    return kitguns[key];
  }

  Future<RivenData> getMeleeRivenData(String key) async {
    final melees = await _getCategoryRivenData('Melee');

    return melees[key];
  }

  Future<RivenData> getPistolRivenData(String key) async {
    final pistols = await _getCategoryRivenData('Pistol');

    return pistols[key];
  }

  Future<RivenData> getRifleRivenData(String key) async {
    final rifles = await _getCategoryRivenData('Rifle');

    return rifles[key];
  }

  Future<RivenData> getShotgunRivenData(String key) async {
    final shotguns = await _getCategoryRivenData('Shotgun');

    return shotguns[key];
  }

  Future<RivenData> getZawRivenData(String key) async {
    final zaws = await _getCategoryRivenData('Zaw');

    return zaws[key];
  }

  Future<Map<String, RivenData>> _getCategoryRivenData(String type) async {
    final data =
        json.decode(await rivenData.readAsString()) as Map<String, dynamic>;

    final category = data['$type Riven Mod'] as Map<String, dynamic>;

    return category.map((key, dynamic data) =>
        MapEntry(key, RivenData.fromJson(data as Map<String, dynamic>)));
  }
}
