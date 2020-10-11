import 'package:warframestat_api_models/warframestat_api_models.dart';
import 'package:wfcd_client/wfcd_client.dart';

import 'fixtures/fixture_reader.dart';

final worldstate = Fixture('worldstate.json');
final searchResults = Fixture('search_results.json');
final dropTable = Fixture('drop_table.json');
final synthTargets = Fixture('synthTargets.json');
final rivenSearch = Fixture('riven_search.json');

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
