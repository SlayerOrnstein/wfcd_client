import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:wfcd_api_wrapper/worldstate_client.dart';
import 'package:worldstate_model/worldstate_models.dart';
import 'package:worldstate_model/worldstate_objects.dart';

class MockClient extends Mock implements http.Client {}

void main() {
  final client = MockClient();
  final mockstate = File('test/worldstatestate.json');

  WorldstateClient api;
  Worldstate worldstate;

  group('Matching Test', () {
    setUp(() async {
      api = WorldstateClient(client);
    });

    group('TypeMatching', () async {
      when(client.get('https://api.warframestat.us/pc/')).thenAnswer(
          (_) async => http.Response(mockstate.readAsStringSync(), 200));

      worldstate = await api.getWorldstate(Platforms.pc);

      test('Worldstate', () {
        expect(worldstate, const TypeMatcher<Worldstate>());
      });

      test('Timestamp', () {
        expect(worldstate.timestamp, const TypeMatcher<DateTime>());
      });

      test('News', () {
        expect(worldstate.news, const TypeMatcher<List<OrbiterNews>>());
      });

      test('Alerts', () {
        expect(worldstate.alerts, const TypeMatcher<List<Alert>>());
      });

      test('Events', () {
        expect(worldstate.events, const TypeMatcher<List<Event>>());
      });

      test('Sortie', () {
        expect(worldstate.sortie, const TypeMatcher<Sortie>());
      });

      test('Syndicates', () {
        expect(
            worldstate.syndicateMissions, const TypeMatcher<List<Syndicate>>());

        for (Syndicate s in worldstate.syndicateMissions) {
          expect(s.jobs, const TypeMatcher<List<Job>>());
        }
      });

      test('Fissures', () {
        expect(worldstate.fissures, const TypeMatcher<List<VoidFissure>>());
      });

      test('Invasions', () {
        expect(worldstate.invasions, const TypeMatcher<List<Invasion>>());
      });

      test('Baro', () {
        expect(worldstate.voidTrader, const TypeMatcher<VoidTrader>());
      });

      test('Daily Deals', () {
        expect(worldstate.dailyDeals, const TypeMatcher<List<DarvoDeal>>());
      });

      test('Acolytes', () {
        expect(worldstate.persistentEnemies,
            const TypeMatcher<List<PersistentEnemies>>());
      });

      test('Cycles', () {
        expect(worldstate.cetusCycle, const TypeMatcher<Cetus>());
        expect(worldstate.earthCycle, const TypeMatcher<Earth>());
        expect(worldstate.vallisCycle, const TypeMatcher<Vallis>());
      });

      test('Cycles extend CycleObject', () {
        expect(worldstate.cetusCycle, const TypeMatcher<CycleObject>());
        expect(worldstate.earthCycle, const TypeMatcher<CycleObject>());
        expect(worldstate.vallisCycle, const TypeMatcher<CycleObject>());
      });
    });

    group('Run test on  exceptions', () {
      test('Check CloudFlare exception', () async {
        when(client.get('https://api.warframestat.us/pc/'))
            .thenAnswer((_) async => http.Response(null, 525));

        expect(await api.getWorldstate(Platforms.pc), CloudflareException());
      });
    });
  });
}
