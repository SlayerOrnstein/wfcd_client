import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:retry/retry.dart';

import 'entities.dart';
import 'src/utils/enums.dart';
import 'src/utils/extensions.dart';
import 'src/utils/json_utils.dart';

export 'src/utils/enums.dart';
export 'src/utils/extensions.dart';
export 'src/utils/json_utils.dart';

/// Dart client for Warframestat API
class WarframestatClient {
  /// Main entry for Warframestat API Dart wrapper
  WarframestatClient({
    this.baseUrl,
    http.Client? client,
    this.platform = GamePlatforms.pc,
    this.language = SupportedLocale.en,
  }) : _client = client ?? http.Client();

  final String? baseUrl;
  final http.Client _client;
  final GamePlatforms platform;
  final SupportedLocale language;

  /// Retrive the latest worldstate using [GamePlatforms]
  Future<Worldstate?> getWorldstate() async {
    final path = platform.asString;
    final response =
        await _warframestat<Map<String, dynamic>>(path, language: language);

    if (response != null) {
      return response['timestamp'] != null ? toWorldstate(response) : null;
    }

    return null;
  }

  /// Retrive a list of all available synthtargets
  Future<List<SynthTarget>> getSynthTargets() async {
    final response = await _warframestat<List<dynamic>>('synthTargets');

    if (response != null) return toSynthTargets(response);

    return <SynthTarget>[];
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
  Future<List<Riven>> searchRivens(String name) async {
    final response = await _warframestat<Map<String, dynamic>>(
      '${platform.asString}/rivens/search/$name',
      language: language,
    );

    if (response != null) {
      return toRivens(response)
          .where((e) => e.unrolled.compatibility == name)
          .toList();
    }

    return <Riven>[];
  }

  Future<List<T>> _search<T>(
    String term,
    String path,
    List<T> Function(List<dynamic>) toObject, {
    SupportedLocale language = SupportedLocale.en,
  }) async {
    final toSearch = term.toLowerCase();
    final response = await _warframestat<List<dynamic>>(
      '$path/$toSearch',
      language: language,
    );

    if (response != null) return toObject(response);

    return <T>[];
  }

  Future<T?> _warframestat<T>(
    String path, {
    SupportedLocale language = SupportedLocale.en,
    String ua = 'navis',
  }) async {
    final headers = <String, String>{'Accept-Language': language.asString};
    final uri = Uri.https(
      baseUrl ?? 'api.warframestat.us',
      '$path/',
      <String, String>{'language': language.asString, 'ua': ua},
    );

    try {
      return retry(
        () async {
          final res = await _client
              .get(uri, headers: headers)
              .timeout(const Duration(seconds: 5));

          return json.decode(res.body) as T;
        },
        retryIf: (e) =>
            e is SocketException ||
            e is TimeoutException ||
            e is FormatException,
      );
    } catch (e) {
      return null;
    }
  }
}
