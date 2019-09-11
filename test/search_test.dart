import 'dart:io';

import 'package:test/test.dart';

import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:warframe_items_model/warframe_items_model.dart';
import 'package:wfcd_api_wrapper/worldstate_wrapper.dart';

import 'worldstate_test..dart';

void main() {
  final client = MockClient();
  final searchs = File('test/search.json');

  const searchUrl = 'https://api.warframestat.us/items/search/chroma';

  const searchTerm = 'chroma';

  WorldstateApiWrapper api;

  group('Test search function and json decoding', () {
    setUp(() {
      api = WorldstateApiWrapper(client);
    });

    test('Test item searching', () async {
      when(client.get(searchUrl))
          .thenAnswer((_) async => http.Response('[]', 200));

      final List<ItemObject> items = await api.searchItems(searchTerm);

      expect(items.isEmpty, true);
    });

    test('Test Search items decoding', () async {
      when(client.get(searchUrl)).thenAnswer(
          (_) async => http.Response(searchs.readAsStringSync(), 200));

      final items = await api.searchItems(searchTerm);

      expect(items, const TypeMatcher<List<ItemObject>>());
    });
  });
}
