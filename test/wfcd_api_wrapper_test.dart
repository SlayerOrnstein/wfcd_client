import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:wfcd_api_wrapper/worldstate_wrapper.dart';
import 'package:worldstate_model/models/worldstate.dart';
import 'package:worldstate_model/worldstate_models.dart';
import 'package:worldstate_model/worldstate_objects.dart';

class MockClient extends Mock implements http.Client {}

void main() {
  final client = MockClient();
  final mockstate = File('test/mockstate.json');

  Worldstate worldstate;

  group('Matching Test', () {
    setUp(() async {
      final api = WorldstateApiWrapper(client);

      when(client.get('https://api.warframestat.us/pc/')).thenAnswer(
          (_) async => http.Response(mockstate.readAsStringSync(), 200));

      worldstate = await api.getWorldstate(Platforms.pc);
    });

    group('TypeMatching', () {
      test('Worldstate', () {
        expect(worldstate, TypeMatcher<Worldstate>());
      });

      test('Timestamp', () {
        expect(worldstate.timestamp, TypeMatcher<DateTime>());
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
        expect(worldstate.cetusCycle, TypeMatcher<Cetus>());
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
