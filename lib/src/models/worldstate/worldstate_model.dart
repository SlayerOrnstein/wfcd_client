import 'package:json_annotation/json_annotation.dart';

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
        );

  factory WorldstateModel.fromJson(Map<String, dynamic> json) {
    return _$WorldstateModelFromJson(json);
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
  final NightwaveModel nightwave;

  @override
  final SentientOutpostModel sentientOutposts;

  @override
  final ArbitrationModel arbitration;

  Map<String, dynamic> toJson() => _$WorldstateModelToJson(this);
}
