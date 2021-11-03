import 'package:json_annotation/json_annotation.dart';

import '../../../models.dart';
import '../../entities/worldstate/worldstate.dart';
import 'alert_model.dart';
import 'arbitration_model.dart';
import 'construction_progress_model.dart';
import 'darvo_deal_model.dart';
import 'earth_model.dart';
import 'event_model.dart';
import 'fissure_model.dart';
import 'invasion_model.dart';
import 'news_model.dart';
import 'nightwave_model.dart';
import 'persistent_enemy_model.dart';
import 'sentient_outpost_model.dart';
import 'sortie_model.dart';
import 'steel_path_model.dart';
import 'syndicate_model.dart';
import 'vallis_model.dart';
import 'void_trader_model.dart';

part 'worldstate_model.g.dart';

@JsonSerializable()
class WorldstateModel extends Worldstate {
  const WorldstateModel({
    required DateTime timestamp,
    required this.news,
    required this.events,
    required this.alerts,
    required this.sortie,
    required this.syndicateMissions,
    required this.fissures,
    required this.invasions,
    required this.voidTrader,
    required this.dailyDeals,
    required this.persistentEnemies,
    required this.earthCycle,
    required this.cetusCycle,
    required this.constructionProgress,
    required this.vallisCycle,
    required this.nightwave,
    required this.sentientOutposts,
    required this.arbitration,
    required this.steelPath,
  }) : super(
          timestamp: timestamp,
          news: news,
          events: events,
          alerts: alerts,
          sortie: sortie,
          syndicateMissions: syndicateMissions,
          fissures: fissures,
          invasions: invasions,
          voidTrader: voidTrader,
          dailyDeals: dailyDeals,
          persistentEnemies: persistentEnemies,
          earthCycle: earthCycle,
          cetusCycle: cetusCycle,
          constructionProgress: constructionProgress,
          vallisCycle: vallisCycle,
          nightwave: nightwave,
          sentientOutposts: sentientOutposts,
          arbitration: arbitration,
          steelPath: steelPath,
        );

  factory WorldstateModel.fromJson(Map<String, dynamic> json) {
    return _$WorldstateModelFromJson(json);
  }

  factory WorldstateModel.fromWorldstate(Worldstate worldstate) {
    return WorldstateModel(
      timestamp: worldstate.timestamp,
      news: List<OrbiterNewsModel>.from(worldstate.news),
      events: List<EventModel>.from(worldstate.events),
      alerts: List<AlertModel>.from(worldstate.alerts),
      sortie: worldstate.sortie as SortieModel,
      syndicateMissions:
          List<SyndicateModel>.from(worldstate.syndicateMissions),
      fissures: List<VoidFissureModel>.from(worldstate.fissures),
      invasions: List<InvasionModel>.from(worldstate.invasions),
      voidTrader: worldstate.voidTrader as VoidTraderModel,
      dailyDeals: List<DarvoDealModel>.from(worldstate.dailyDeals),
      persistentEnemies: List<PersistentEnemyModel>.from(
          worldstate.persistentEnemies ?? <PersistentEnemyModel>[]),
      earthCycle: worldstate.earthCycle as EarthModel,
      cetusCycle: worldstate.cetusCycle as EarthModel,
      constructionProgress:
          worldstate.constructionProgress as ConstructionProgressModel,
      vallisCycle: worldstate.vallisCycle as VallisModel,
      nightwave: worldstate.nightwave != null
          ? worldstate.nightwave! as NightwaveModel
          : null,
      sentientOutposts: worldstate.sentientOutposts as SentientOutpostModel,
      arbitration: worldstate.arbitration as ArbitrationModel?,
      steelPath: worldstate.steelPath as SteelPathModel,
    );
  }

  @override
  final List<OrbiterNewsModel> news;

  @override
  final List<EventModel> events;

  @override
  final List<AlertModel> alerts;

  @override
  final SortieModel sortie;

  @override
  final List<SyndicateModel> syndicateMissions;

  @override
  final List<VoidFissureModel> fissures;

  @override
  final List<InvasionModel> invasions;

  @override
  final VoidTraderModel voidTrader;

  @override
  final List<DarvoDealModel> dailyDeals;

  @override
  final List<PersistentEnemyModel> persistentEnemies;

  @override
  final EarthModel earthCycle;

  @override
  final EarthModel cetusCycle;

  @override
  final ConstructionProgressModel constructionProgress;

  @override
  final VallisModel vallisCycle;

  @override
  final NightwaveModel? nightwave;

  @override
  final SentientOutpostModel sentientOutposts;

  @override
  final ArbitrationModel? arbitration;

  @override
  final SteelPathModel steelPath;

  Map<String, dynamic> toJson() => _$WorldstateModelToJson(this);
}
