library worldstate_wrapper;

import 'package:http/http.dart' as http;
import 'package:wfcd_api_wrapper/src/api_base_caller.dart';
import 'package:wfcd_api_wrapper/src/utils.dart';
import 'package:worldstate_model/worldstate_models.dart';
import 'package:worldstate_model/worldstate_objects.dart';

enum Platforms { pc, ps4, xb1, swi }

class WorldstateApiWrapper {
  WorldstateApiWrapper(this.worldstate);

  final Worldstate worldstate;

  static Future<WorldstateApiWrapper> getInstance(Platforms platform,
      [http.Client client]) async {
    final ApiBase _base = ApiBase(client ?? http.Client());
    final json = await _base.get('/${platformToString(platform)}');

    return WorldstateApiWrapper(Worldstate.fromJson(json));
  }

  String get timestamp => worldstate?.timestamp;

  List<OrbiterNews> get news => worldstate?.news;

  List<Event> get events => worldstate?.events;

  List<Alert> get alerts => worldstate?.alerts;

  Sortie get sortie => worldstate?.sortie;

  List<Syndicate> get syndicateMissions => worldstate?.syndicateMissions;

  List<VoidFissure> get fissures => worldstate?.fissures;

  List<Invasion> get invasions => worldstate?.invasions;

  VoidTrader get trader => worldstate?.voidTrader;

  List<DarvoDeal> get dailyDeals => worldstate?.dailyDeals;

  List<PersistentEnemies> get acolytes => worldstate?.persistentEnemies;

  CycleObject get cetusCycle => worldstate?.cetusCycle;

  CycleObject get earthCycle => worldstate?.earthCycle;

  CycleObject get vallisCycle => worldstate?.vallisCycle;

  Nightwave get nightwave => worldstate?.nightwave;
}
