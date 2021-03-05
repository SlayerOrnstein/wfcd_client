import 'package:equatable/equatable.dart';

import 'alert.dart';
import 'arbitration.dart';
import 'construction_progress.dart';
import 'darvo_deal.dart';
import 'earth.dart';
import 'event.dart';
import 'fissure.dart';
import 'invasion.dart';
import 'news.dart';
import 'nigthwave.dart';
import 'persistent_enemy.dart';
import 'sentient_outpost.dart';
import 'sortie.dart';
import 'syndicate.dart';
import 'vallis.dart';
import 'void_trader.dart';

class Worldstate extends Equatable {
  const Worldstate({
    required this.timestamp,
    required this.news,
    required this.events,
    required this.alerts,
    required this.sortie,
    required this.syndicateMissions,
    required this.fissures,
    required this.invasions,
    required this.voidTrader,
    required this.dailyDeals,
    this.persistentEnemies,
    required this.earthCycle,
    required this.cetusCycle,
    required this.constructionProgress,
    required this.vallisCycle,
    required this.nightwave,
    required this.sentientOutposts,
    this.arbitration,
  });

  final DateTime timestamp;

  final List<OrbiterNews> news;
  final List<Event> events;
  final List<Alert> alerts;
  final Sortie sortie;
  final List<Syndicate> syndicateMissions;
  final List<VoidFissure> fissures;
  final List<Invasion> invasions;
  final VoidTrader voidTrader;
  final List<DarvoDeal> dailyDeals;
  final List<PersistentEnemy>? persistentEnemies;
  final Earth earthCycle, cetusCycle;
  final ConstructionProgress constructionProgress;
  final Vallis vallisCycle;
  final Nightwave nightwave;
  final SentientOutpost sentientOutposts;
  final Arbitration? arbitration;

  bool get activeAlerts => alerts.isNotEmpty;
  bool get activeArbitration => arbitration?.node != null;
  bool get activeEvents => events.isNotEmpty;
  bool get anomalyDetected => sentientOutposts.active;
  bool get isSaleActive => dailyDeals.isNotEmpty;
  bool get enemyActive => persistentEnemies?.isNotEmpty ?? false;

  @override
  List<Object?> get props {
    return [
      timestamp,
      news,
      events,
      alerts,
      sortie,
      syndicateMissions,
      fissures,
      invasions,
      voidTrader,
      dailyDeals,
      persistentEnemies,
      earthCycle,
      cetusCycle,
      constructionProgress,
      vallisCycle,
      nightwave,
      sentientOutposts,
      arbitration
    ];
  }
}
