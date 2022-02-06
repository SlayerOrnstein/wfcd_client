import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';
import 'package:wfcd_client/models.dart';
import 'package:wfcd_client/wfcd_client.dart';

import 'fixtures.dart';

class MockClient extends Mock implements http.Client {}

void main() {
  const testHeader = {'content-type': 'application/json; charset=utf-8'};

  late WarframestatClient clientApi;
  late MockClient mockClient;

  setUp(() async {
    mockClient = MockClient();
    clientApi = WarframestatClient(client: mockClient);

    await loadFixtures();
  });

  group('Worldstate', () {
    final worldstateUri = Uri.parse('https://api.warframestat.us/pc');
    test('Model serelization', () async {
      when(() => mockClient.get(worldstateUri, headers: any(named: 'headers')))
          .thenAnswer(
        (_) async => http.Response(
          json.encode(worldstateTestModel as WorldstateModel),
          200,
          headers: testHeader,
        ),
      );

      final state = await clientApi.getWorldstate(GamePlatforms.pc);

      verify(() {
        return mockClient.get(worldstateUri, headers: any(named: 'headers'));
      });

      expect(state, equals(worldstateTestModel));
      expect(WorldstateModel.fromWorldstate(state!), isA<WorldstateModel>());
    });

    test('Empty state check', () async {
      when(() => mockClient.get(worldstateUri, headers: any(named: 'headers')))
          .thenAnswer((_) async {
        return http.Response(
          json.encode(<String, dynamic>{}),
          404,
          headers: testHeader,
        );
      });

      final state = await clientApi.getWorldstate(GamePlatforms.pc);

      expect(state, isNull);
      verify(() {
        return mockClient.get(worldstateUri, headers: any(named: 'headers'));
      });
    });
  });

  test('SynthTargets', () async {
    final synthTargetsUri =
        Uri.parse('https://api.warframestat.us/synthTargets');

    when(
      () => mockClient.get(synthTargetsUri, headers: any(named: 'headers')),
    ).thenAnswer(
      (_) async => http.Response(
        json.encode(fromSynthTargets(synthTargetsTestModels)),
        200,
        headers: testHeader,
      ),
    );

    final targets = await clientApi.getSynthTargets();

    expect(targets, equals(synthTargetsTestModels));
    verify(
      () => mockClient.get(synthTargetsUri, headers: any(named: 'headers')),
    );
  });

  test('Item search results', () async {
    const term = 'Chroma';
    final searchUri = Uri.parse(
      'https://api.warframestat.us/items/search/${term.toLowerCase()}',
    );

    when(() => mockClient.get(searchUri, headers: any(named: 'headers')))
        .thenAnswer(
      (_) async => http.Response(
        json.encode(
          fromBaseItems(
            warframeItemTestModels.where((e) => e.name.contains(term)).toList(),
          ),
        ),
        200,
        headers: testHeader,
      ),
    );

    final results = await clientApi.searchItems(term);

    expect(
      results,
      equals(
        warframeItemTestModels.where((e) => e.name.contains(term)).toList(),
      ),
    );
    verify(() => mockClient.get(searchUri, headers: any(named: 'headers')));
  });

  test('Drops', () async {
    const term = 'Chroma';
    final dropUri = Uri.parse(
      'https://api.warframestat.us/drops/search/${term.toLowerCase()}',
    );

    when(() => mockClient.get(dropUri, headers: any(named: 'headers')))
        .thenAnswer(
      (_) async => http.Response(
        json.encode(
          fromDrops(
            dropTableTestModels.where((e) => e.item.contains(term)).toList(),
          ),
        ),
        200,
        headers: testHeader,
      ),
    );

    final drops = await clientApi.searchDrops(term);

    expect(
      drops,
      equals(
        dropTableTestModels.where((e) => e.item.contains(term)).toList(),
      ),
    );
    verify(() => mockClient.get(dropUri, headers: any(named: 'headers')));
  });

  test('Rivens', () async {
    const term = 'Arca Plasmor';
    final rivenUri =
        Uri.parse('https://api.warframestat.us/pc/rivens/search/$term');

    when(() => mockClient.get(rivenUri, headers: any(named: 'headers')))
        .thenAnswer(
      (_) async => http.Response(
        json.encode(fromRivens(rivenSearchTestModel)),
        200,
        headers: testHeader,
      ),
    );

    final rivens = await clientApi.searchRivens(term);

    expect(
      rivens,
      equals(
        rivenSearchTestModel
            .where((e) => e.unrolled.compatibility == term)
            .toList(),
      ),
    );
    verify(() => mockClient.get(rivenUri, headers: any(named: 'headers')));
  });
}
