import 'package:wfcd_client/entities.dart';
import 'package:wfcd_client/models.dart';
import 'package:wfcd_client/wfcd_client.dart';

import 'fixtures/fixture_reader.dart';

const worldstate = Fixture('worldstate.json');
const searchResults = Fixture('search_results.json');
const dropTable = Fixture('drop_table.json');
const synthTargets = Fixture('synthTargets.json');
const rivenSearch = Fixture('riven_search.json');

final worldstateTestModel =
    WorldstateModel.fromJson(worldstate.json<Map<String, dynamic>>());

final searchResultsTestModels =
    toBaseItems(searchResults.json<List<dynamic>>());

final dropTableTestModels = toDrops(dropTable.json<List<dynamic>>());
final synthTargetsTestModels =
    toSynthTargets(synthTargets.json<List<dynamic>>());

List<Riven> rivenSearchTestModel() {
  final rivens = <Riven>[];
  final model = rivenSearch.json<Map<String, dynamic>>();

  for (final riven in model.keys) {
    rivens.add(RivenDataModel.fromJson(model[riven] as Map<String, dynamic>));
  }

  return rivens;
}