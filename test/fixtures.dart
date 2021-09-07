import 'package:wfcd_client/entities.dart';
import 'package:wfcd_client/models.dart';
import 'package:wfcd_client/wfcd_client.dart';

import 'fixtures/fixture_reader.dart';

const worldstate = Fixture('worldstate.json');
const warframeItems = Fixture('warframe_items.json');
const dropTable = Fixture('drop_table.json');
const synthTargets = Fixture('synthTargets.json');
const rivenSearch = Fixture('riven_search.json');

late Worldstate worldstateTestModel;
late List<Item> warframeItemTestModels;
late List<SlimDrop> dropTableTestModels;
late List<SynthTarget> synthTargetsTestModels;
late List<Riven> rivenSearchTestModel;

Future<void> loadFixtures() async {
  worldstateTestModel =
      WorldstateModel.fromJson(await worldstate.json<Map<String, dynamic>>());

  warframeItemTestModels =
      toBaseItems(await warframeItems.json<List<dynamic>>());

  dropTableTestModels = toDrops(await dropTable.json<List<dynamic>>());
  synthTargetsTestModels =
      toSynthTargets(await synthTargets.json<List<dynamic>>());

  rivenSearchTestModel =
      toRivens(await rivenSearch.json<Map<String, dynamic>>()).toList();
}
