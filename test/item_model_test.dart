import 'package:test/test.dart';
import 'package:wfcd_client/entities.dart';
import 'package:wfcd_client/models.dart';
import 'package:wfcd_client/wfcd_client.dart';

import 'fixtures/fixture_reader.dart';

void main() {
  const searchResults = Fixture('warframe_items.json');

  late List<Item> testModels;

  setUp(() async {
    testModels = toBaseItems(await searchResults.json<List<dynamic>>());
  });

  test(
    'Testing of Item models/entities for proper serelization',
    () {
      final item = testModels.whereType<MiscItem>().first;
      final frame = testModels.whereType<Warframe>().first;
      final mod = testModels.whereType<Mod>().first;
      final weapon = testModels.whereType<ProjectileWeapon>().first;
      final archwing = testModels.whereType<HeavyPowerSuit>().first;
      final melee = testModels.whereType<MeleeWeapon>().first;

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
