import 'package:http/http.dart' as http;
import 'package:test/test.dart';
import 'package:wfcd_api_wrapper/worldstate_wrapper.dart';
import 'package:worldstate_model/models/worldstate.dart';
import 'package:worldstate_model/worldstate_models.dart';
import 'package:worldstate_model/worldstate_objects.dart';

void main() {
  WorldstateApiWrapper api;
  group('A group of tests', () {
    setUp(() async {
      api = await WorldstateApiWrapper.getInstance(Platforms.pc, http.Client());
    });

    group('TypeMatching', () {
      test('Worldstate', () {
        expect(api.worldstate, TypeMatcher<Worldstate>());
      });

      test('Timestamp', () {
        expect(api.timestamp, TypeMatcher<String>());
      });

      test('News', () {
        expect(api.news, TypeMatcher<List<OrbiterNews>>());
      });

      test('Alerts', () {
        expect(api.alerts, TypeMatcher<List<Alert>>());
      });

      test('Events', () {
        expect(api.events, TypeMatcher<List<Event>>());
      });

      test('Sortie', () {
        expect(api.sortie, TypeMatcher<Sortie>());
      });

      test('Syndicates', () {
        expect(api.syndicateMissions, TypeMatcher<List<Syndicate>>());

        for (Syndicate s in api.syndicateMissions) {
          expect(s.jobs, TypeMatcher<List<Job>>());
        }
      });

      test('Fissures', () {
        expect(api.fissures, TypeMatcher<List<VoidFissure>>());
      });

      test('Invasions', () {
        expect(api.invasions, TypeMatcher<List<Invasion>>());
      });

      test('Baro', () {
        expect(api.trader, TypeMatcher<VoidTrader>());
      });

      test('Daily Deals', () {
        expect(api.dailyDeals, TypeMatcher<List<DarvoDeal>>());
      });

      test('Acolytes', () {
        expect(api.acolytes, TypeMatcher<List<PersistentEnemies>>());
      });

      test('Cycles', () {
        expect(api.cetusCycle, TypeMatcher<Earth>());
        expect(api.earthCycle, TypeMatcher<Earth>());
        expect(api.vallisCycle, TypeMatcher<Vallis>());
      });

      test('Cycles extend CycleObject', () {
        expect(api.cetusCycle, TypeMatcher<CycleObject>());
        expect(api.earthCycle, TypeMatcher<CycleObject>());
        expect(api.vallisCycle, TypeMatcher<CycleObject>());
      });
    });
  });
}
