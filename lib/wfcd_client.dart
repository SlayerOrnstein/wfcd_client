library wfcd_client;

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:warframestat_api_models/warframestat_api_models.dart';

import 'src/utils/enums.dart';
import 'src/utils/json_utils.dart';

export 'src/utils/enums.dart';
export 'src/utils/json_utils.dart';

const _endpoint = 'https://api.warframestat.us';

/// Dart client for Warframestat API
class WarframestatClient {
  /// Main entry for Warframestat API Dart wrapper
  WarframestatClient({Dio dio, this.language = SupportedLocale.en})
      : _client = dio ?? Dio() {
    _client.options = BaseOptions(
      baseUrl: _endpoint,
      headers: <String, String>{'Accept-Language': language.asString},
    );
  }

  final Dio _client;

  /// Sets the Accept-Language header for all request
  final SupportedLocale language;

  /// Retrive the latest worldstate base on [GamePlatforms] with the optional
  /// language, the language defaults to [SupportedLocale.en] (English).
  Future<Worldstate> getWorldstate(GamePlatforms platform,
      {SupportedLocale language = SupportedLocale.en}) async {
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
    final response = await _warframestat<Map<String, dynamic>>(
        '${platform.asString}/rivens/search/$term');

    return toRivens(name, response);
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
    final response = await _client.get<T>('$_endpoint/$path');

    return response.data;
  }
}
