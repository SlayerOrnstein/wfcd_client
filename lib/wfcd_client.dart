library wfcd_client;

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:warframestat_api_models/warframestat_api_models.dart';

import 'src/utils/enums.dart';
import 'src/utils/json_utils.dart';

export 'src/utils/enums.dart';
export 'src/utils/json_utils.dart';

const _endpoint = 'https://api.warframestat.us';

/// Dart client for Warframestat API
class WarframestatClient {
  /// Main entry for Warframestat API Dart wrapper
  /// the language defaults to [SupportedLocale.en] (English).
  /// language can be set by calling [WarframestateClient.setLang]
  WarframestatClient({http.Client client}) : _client = client ?? http.Client();

  final http.Client _client;

  SupportedLocale _language = SupportedLocale.en;

  /// Sets the language for all [WarframestatClient] requests
  void setLang(SupportedLocale lang) {
    if (_language != lang) {
      _language = lang;
    }

    print(_language);
  }

  /// Retrive the latest worldstate using [GamePlatforms]
  Future<Worldstate> getWorldstate(GamePlatforms platform) async {
    final path = platform.asString;
    final response = await _warframestat<Map<String, dynamic>>(path);

    return toWorldstate(response);
  }

  /// Retrive a list of all available synthtargets
  Future<List<SynthTarget>> getSynthTargets() async {
    final response = await _warframestat<List<dynamic>>('synthTargets');

    return toSynthTargets(response);
  }

  /// Search using warframestat's warframe-items endpoint
  Future<List<Item>> searchItems(String searchTerm) async {
    return _search<Item>(searchTerm, 'items/search', toBaseItems);
  }

  /// Search using warframestat's drop table endpoint
  Future<List<SlimDrop>> searchDrops(String name) async {
    return _search<SlimDrop>(name, 'drops/search', toDrops);
  }

  /// Search using warframestat's riven information endpoint.
  /// Platform defaults to [GamePlatforms.pc]
  Future<List<Riven>> searchRivens(
    String name, {
    GamePlatforms platform = GamePlatforms.pc,
  }) async {
    final term = name.toLowerCase();
    final response = await _warframestat<Map<String, dynamic>>(
        '${platform.asString}/rivens/search/$term');

    return toRivens(response);
  }

  Future<List<T>> _search<T>(
    String term,
    String path,
    List<T> Function(List<dynamic>) toObject,
  ) async {
    final toSearch = term.toLowerCase();
    final response = await _warframestat<List<dynamic>>('$path/$toSearch');

    return toObject(response);
  }

  Future<T> _warframestat<T>(String path) async {
    final headers = <String, String>{'Accept-Language': _language.asString};
    final response = await _client.get('$_endpoint/$path', headers: headers);

    return json.decode(response.body) as T;
  }
}
