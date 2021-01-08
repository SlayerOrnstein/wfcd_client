import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';

import 'fixtures.dart';

const statusCode = 200;
const _headers = {
  HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8'
};

class MockClient extends Mock implements http.Client {
  @override
  Future<http.Response> get(dynamic url, {Map<String, String>? headers}) async {
    final uri = Uri.parse(url as String);
    final path = uri.path;

    if (path.contains(RegExp(r'(pc$)|(xb1$)|(ps4$)'))) {
      return http.Response(
        worldstate.fixture(),
        statusCode,
        headers: _headers,
      );
    } else if (path.contains('synthTargets')) {
      return http.Response(synthTargets.fixture(), statusCode,
          headers: _headers);
    } else if (path.contains('items/search')) {
      return http.Response(
        searchResults.fixture(),
        statusCode,
        headers: _headers,
      );
    } else if (path.contains('drops/search')) {
      return http.Response(
        dropTable.fixture(),
        statusCode,
        headers: _headers,
      );
    } else if (path.contains('rivens/search')) {
      return http.Response(
        rivenSearch.fixture(),
        statusCode,
        headers: _headers,
      );
    }

    return http.Response('', 404, headers: _headers);
  }
}
