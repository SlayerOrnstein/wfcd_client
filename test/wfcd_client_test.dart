import 'package:test/test.dart';
import 'package:wfcd_client/wfcd_client.dart';

import 'fixtures.dart';
import 'mock_client.dart';

void main() {
  WarframestatClient clientApi;
  MockClient mockClient;

  setUp(() {
    mockClient = MockClient();
    clientApi = WarframestatClient(client: mockClient);
  });

  group('Ensure proper serialization', () {
    test('Worldstate', () async {
      final state = await clientApi.getWorldstate(GamePlatforms.pc);

      expect(state, equals(worldstateTestModel));
    });

    test('SynthTargets', () async {
      final targets = await clientApi.getSynthTargets();

      expect(targets, equals(synthTargetsTestModels));
    });

    test('Item search results', () async {
      final results = await clientApi.searchItems('Cestra');

      expect(results, equals(searchResultsTestModels));
    });

    test('Drops', () async {
      final resultsForComparing =
          dropTableTestModels.where((e) => e.item.contains('Chroma')).toList();

      final drops = await clientApi.searchDrops('Chroma');

      expect(drops, equals(resultsForComparing));
    });

    test('Rivens', () async {
      final rivens = await clientApi.searchRivens('Arca Plasmor');

      expect(rivens, equals(rivenSearchTestModel()));
    });
  });
}
