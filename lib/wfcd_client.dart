library wfcd_client;

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
  WarframestatClient() : _client = Dio() {
    _client.options = BaseOptions(
      baseUrl: _endpoint,
      headers: <String, String>{'Accept-Language': SupportedLocale.en.asString},
    );
  }

  final Dio _client;

  /// Expose Dio's interceptors to allow better control over warframestat data
  List<Interceptor> get interceptors => _client.interceptors;

  /// Change the language from default [SuppoertedLocale.en]
  void setLanguage(SupportedLocale language) {
    _client.options.headers = <String, String>{
      'Accept-Language': language.asString
    };
  }

  /// Retrive the latest worldstate base on [GamePlatforms] with the optional
  /// language, the language defaults to [SupportedLocale.en] (English).
  Future<Worldstate> getWorldstate(GamePlatforms platform,
      {Options options}) async {
    final path = platform.asString;
    final response =
        await _warframestat<Map<String, dynamic>>(path, options: options);

    return toWorldstate(response);
  }

  /// Retrive a list of all available synthtargets
  Future<List<SynthTarget>> getSynthTargets({Options options}) async {
    final response =
        await _warframestat<List<dynamic>>('synthTargets', options: options);

    return toSynthTargets(response);
  }

  /// Search using warframestat's warframe-items endpoint
  Future<List<BaseItem>> searchItems(String searchTerm,
      {Options options}) async {
    return _search<BaseItem>(searchTerm, 'items/search', toBaseItems,
        options: options);
  }

  /// Search using warframestat's drop table endpoint
  Future<List<SlimDrop>> searchDrops(String name, {Options options}) async {
    return _search(name, 'drops/search', toDrops, options: options);
  }

  /// Search using warframestat's riven information endpoint.
  /// Platform defaults to [GamePlatforms.pc]
  Future<List<RivenRoll>> searchRivens(String name,
      {GamePlatforms platform = GamePlatforms.pc, Options options}) async {
    final term = name.toLowerCase();
    final response = await _warframestat<Map<String, dynamic>>(
        '${platform.asString}/rivens/search/$term');

    return toRivens(name, response);
  }

  Future<List<T>> _search<T>(
      String term, String path, List<T> Function(List<dynamic>) toObject,
      {Options options}) async {
    final toSearch = term.toLowerCase();
    final response =
        await _warframestat<List<dynamic>>('$path/$toSearch', options: options);

    return toObject(response);
  }

  Future<T> _warframestat<T>(String path, {Options options}) async {
    final response = await _client.get<T>('$_endpoint/$path', options: options);

    return response.data;
  }
}
