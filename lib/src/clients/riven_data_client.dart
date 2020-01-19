import 'dart:convert';
import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;
import 'package:wfcd_client/enums.dart';
import 'package:wfcd_client/src/utils/converter_utils.dart';
import 'package:wfcd_client/src/utils/exception_handler.dart';
import 'package:worldstate_api_model/misc.dart';

class RivenDataClient extends Equatable {
  const RivenDataClient(this.rivenData, {this.platform = Platforms.pc});

  final File rivenData;
  final Platforms platform;

  static const _baseUrl = 'https://api.warframestat.us';

  Future<void> downloadRivenData() async {
    final _platform = platformToString(platform);
    final response = await http.get('$_baseUrl/$_platform/rivens');
    final body = excpetionHandler(response, returnString: true) as String;

    await rivenData.writeAsString(body);
  }

  Future<RivenData> getArchgunRivenData(String key) async {
    final archguns = await getCategoryRivenData('Archgun');

    return archguns[key];
  }

  Future<RivenData> getKitgunRivenData(String key) async {
    final kitguns = await getCategoryRivenData('Kitgun');

    return kitguns[key];
  }

  Future<RivenData> getMeleeRivenData(String key) async {
    final melees = await getCategoryRivenData('Melee');

    return melees[key];
  }

  Future<RivenData> getPistolRivenData(String key) async {
    final pistols = await getCategoryRivenData('Pistol');

    return pistols[key];
  }

  Future<RivenData> getRifleRivenData(String key) async {
    final rifles = await getCategoryRivenData('Rifle');

    return rifles[key];
  }

  Future<RivenData> getShotgunRivenData(String key) async {
    final shotguns = await getCategoryRivenData('Shotgun');

    return shotguns[key];
  }

  Future<RivenData> getZawRivenData(String key) async {
    final zaws = await getCategoryRivenData('Zaw');

    return zaws[key];
  }

  Future<Map<String, RivenData>> getCategoryRivenData(String type) async {
    if (rivenData.existsSync()) {
      return _getCategoryRivenData(type);
    } else {
      await downloadRivenData();
      return _getCategoryRivenData(type);
    }
  }

  Future<Map<String, RivenData>> _getCategoryRivenData(String type) async {
    final rivenData = await this.rivenData.readAsString();
    final data = json.decode(rivenData) as Map<String, dynamic>;

    final category = data['$type Riven Mod'] as Map<String, dynamic>;

    return category.map((String key, dynamic data) {
      return MapEntry(key, RivenData.fromJson(data as Map<String, dynamic>));
    });
  }

  RivenDataClient copyWith(File rivenData, Platforms platform) {
    return RivenDataClient(
      rivenData ?? this.rivenData,
      platform: platform ?? this.platform,
    );
  }

  @override
  List<Object> get props => [rivenData, platform];
}
