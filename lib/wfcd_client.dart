library wfcd_client;

import 'dart:convert';

import 'package:http/http.dart';
import 'package:warframestat_api_models/warframestat_api_models.dart';

import 'src/utils/enums.dart';
import 'src/utils/json_utils.dart';

export 'src/utils/enums.dart';
export 'src/utils/json_utils.dart';

/// Dart client for Warframestat API
class WarframestatClient {
  /// Main entry for Warframestat API Dart wrapper
  const WarframestatClient(Client client) : _client = client;

  final Client _client;

  static const _endpoint = '';

  /// Retrive the latest worldstate base on [GamePlatforms] with the optional
  /// language, the language defaults to [SupportedLocale.en] (English).
  Future<Worldstate> getWorldstate(GamePlatforms platform,
      {SupportedLocale language = SupportedLocale.en}) async {
    final path = platform.asString;
    final response =
        await _warframestat(path, language: language) as Map<String, dynamic>;

    return WorldstateModel.fromJson(response);
  }

  /// Retrive a list of all available synthtargets
  Future<List<SynthTarget>> getSynthTargets() async {
    final response = await _warframestat('synthTargets') as List<dynamic>;

    return toSynthTargets(response);
  }

  /// Search using warframestat's warframe-items endpoint
  Future<List<BaseItem>> searchItems(String searchTerm) async {
    return _search<BaseItem>(searchTerm, 'items/search', toBaseItems);
  }

  /// Search using warframestat's drop table endpoint
  Future<List<SlimDrop>> searchDrops(String name) async {
    return _search(name, 'drops/search', toDrops);
  }

  /// Search using warframestat's riven information endpoint.
  /// Platform defaults to [GamePlatforms.pc]
  Future<List<RivenRoll>> searchRivens(String name,
      {GamePlatforms platform = GamePlatforms.pc}) async {
    final term = name.toLowerCase();
    final response =
        await _warframestat('${platform.asString}/rivens/search/$term')
            as Map<String, dynamic>;

    return toRivens(name, response);
  }

  Future<List<T>> _search<T>(
    String term,
    String path,
    List<T> Function(List<dynamic>) toObject,
  ) async {
    final toSearch = term.toLowerCase();
    final response = await _warframestat('$path/$toSearch') as List<dynamic>;

    return toObject(response);
  }

  Future<dynamic> _warframestat(String path,
      {SupportedLocale language = SupportedLocale.en}) async {
    final headers = <String, String>{'Accept-Language': language.asString};
    final response = await _client.get('$_endpoint/$path', headers: headers);

    return json.decode(response.body);
  }
}
