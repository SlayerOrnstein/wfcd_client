import 'package:http/http.dart' as http;
import 'package:test/test.dart';
import 'package:wfcd_api_wrapper/worldstate_wrapper.dart';
import 'package:worldstate_model/models/worldstate.dart';
import 'package:worldstate_model/worldstate_models.dart';
import 'package:worldstate_model/worldstate_objects.dart';

void main() {
  Worldstate worldstate;
  group('A group of tests', () {
    setUp(() async {
      final api = WorldstateApiWrapper(http.Client());

      worldstate = await api.getWorldstate(Platforms.pc);
    });

    group('TypeMatching', () {
      test('Worldstate', () {
        expect(worldstate, TypeMatcher<Worldstate>());
      });

      test('Timestamp', () {
        expect(worldstate.timestamp, TypeMatcher<String>());
      });

      test('News', () {
        expect(worldstate.news, TypeMatcher<List<OrbiterNews>>());
      });

      test('Alerts', () {
        expect(worldstate.alerts, TypeMatcher<List<Alert>>());
      });

      test('Events', () {
        expect(worldstate.events, TypeMatcher<List<Event>>());
      });

      test('Sortie', () {
        expect(worldstate.sortie, TypeMatcher<Sortie>());
      });

      test('Syndicates', () {
        expect(worldstate.syndicateMissions, TypeMatcher<List<Syndicate>>());

        for (Syndicate s in worldstate.syndicateMissions) {
          expect(s.jobs, TypeMatcher<List<Job>>());
        }
      });

      test('Fissures', () {
        expect(worldstate.fissures, TypeMatcher<List<VoidFissure>>());
      });

      test('Invasions', () {
        expect(worldstate.invasions, TypeMatcher<List<Invasion>>());
      });

      test('Baro', () {
        expect(worldstate.voidTrader, TypeMatcher<VoidTrader>());
      });

      test('Daily Deals', () {
        expect(worldstate.dailyDeals, TypeMatcher<List<DarvoDeal>>());
      });

      test('Acolytes', () {
        expect(worldstate.persistentEnemies,
            TypeMatcher<List<PersistentEnemies>>());
      });

      test('Cycles', () {
        expect(worldstate.cetusCycle, TypeMatcher<Earth>());
        expect(worldstate.earthCycle, TypeMatcher<Earth>());
        expect(worldstate.vallisCycle, TypeMatcher<Vallis>());
      });

      test('Cycles extend CycleObject', () {
        expect(worldstate.cetusCycle, TypeMatcher<CycleObject>());
        expect(worldstate.earthCycle, TypeMatcher<CycleObject>());
        expect(worldstate.vallisCycle, TypeMatcher<CycleObject>());
      });
    });
  });
}
