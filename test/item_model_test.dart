import 'package:test/test.dart';
import 'package:wfcd_client/entities.dart';
import 'package:wfcd_client/models.dart';
import 'package:wfcd_client/wfcd_client.dart';

import 'fixtures/fixture_reader.dart';

void main() {
  const searchResults = Fixture('warframe_items.json');

  late List<Item> searchResultsTestModels;

  setUp(() async {
    searchResultsTestModels =
        toBaseItems(await searchResults.json<List<dynamic>>());
  });

  test(
    'Testing of Item models/entities for proper serelization',
    () {
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
    },
  );
}
