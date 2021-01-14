import 'package:test/test.dart';
import 'package:wfcd_client/entities.dart';
import 'package:wfcd_client/models.dart';
import 'package:wfcd_client/wfcd_client.dart';

import 'fixtures.dart';
import 'mock_client.dart';

void main() {
  late WarframestatClient clientApi;
  late MockClient mockClient;

  setUp(() {
    mockClient = MockClient();
    clientApi = WarframestatClient(client: mockClient);
  });

  test('Search items', () {
    final item = searchResultsTestModels.firstWhere((e) => e is MiscItem);
    final frame = searchResultsTestModels.firstWhere((e) => e is Warframe);
    final mod = searchResultsTestModels.firstWhere((e) => e is Mod);
    final weapon =
        searchResultsTestModels.firstWhere((e) => e is ProjectileWeapon);
    final archwing =
        searchResultsTestModels.firstWhere((e) => e is HeavyPowerSuit);
    final melee = searchResultsTestModels.firstWhere((e) => e is MeleeWeapon);

    final itemJson = fromBaseItem(item);
    final frameJson = fromBaseItem(frame);
    final modJson = fromBaseItem(mod);
    final weaponJson = fromBaseItem(weapon);
    final archwingJson = fromBaseItem(archwing);
    final meleeJson = fromBaseItem(melee);

    expect(itemJson, (item as MiscItemModel).toJson());
    expect(frameJson, (frame as WarframeModel).toJson());
    expect(modJson, (mod as ModModel).toJson());
    expect(weaponJson, (weapon as ProjectileWeaponModel).toJson());
    expect(archwingJson, (archwing as HeavyPowerSuitModel).toJson());
    expect(meleeJson, (melee as MeleeWeaponModel).toJson());
  });

  group('Test api functions', () {
    test('Worldstate', () async {
      final state = await clientApi.getWorldstate(GamePlatforms.pc);

      expect(state, equals(worldstateTestModel));
    });

    test('SynthTargets', () async {
      final targets = await clientApi.getSynthTargets();

      expect(targets, equals(synthTargetsTestModels));
    });

    test('Item search results', () async {
      const term = 'Cestra';
      final results = await clientApi.searchItems(term);

      expect(
        results,
        equals(searchResultsTestModels
            .where((e) => e.name.contains(term))
            .toList()),
      );
    });

    test('Drops', () async {
      final resultsForComparing =
          dropTableTestModels.where((e) => e.item.contains('Chroma')).toList();

      final drops = await clientApi.searchDrops('Chroma');

      expect(drops, equals(resultsForComparing));
    });

    test('Rivens', () async {
      final rivens = await clientApi.searchRivens('Arca Plasmor');

      expect(
          rivens, equals(toRivens(rivenSearch.json<Map<String, dynamic>>())));
    });
  });
}
