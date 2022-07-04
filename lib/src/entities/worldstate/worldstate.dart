import 'package:equatable/equatable.dart';

import '../../../entities.dart';

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
    this.nightwave,
    required this.sentientOutposts,
    this.arbitration,
    required this.steelPath,
    required this.zarimanCycle,
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
  final Nightwave? nightwave;
  final SentientOutpost sentientOutposts;
  final Arbitration? arbitration;
  final SteelPath steelPath;
  final Zariman zarimanCycle;

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
      arbitration,
      steelPath,
      zarimanCycle,
    ];
  }

  Worldstate copyWith({
    final DateTime? timestamp,
    List<OrbiterNews>? news,
    List<Event>? events,
    List<Alert>? alerts,
    Sortie? sortie,
    List<Syndicate>? syndicateMissions,
    List<VoidFissure>? fissures,
    List<Invasion>? invasions,
    VoidTrader? voidTrader,
    List<DarvoDeal>? dailyDeals,
    List<PersistentEnemy>? persistentEnemies,
    Earth? earthCycle,
    Earth? cetusCycle,
    ConstructionProgress? constructionProgress,
    Vallis? vallisCycle,
    Nightwave? nightwave,
    SentientOutpost? sentientOutposts,
    Arbitration? arbitration,
    SteelPath? steelPath,
    Zariman? zarimanCycle,
  }) {
    return Worldstate(
      timestamp: timestamp ?? this.timestamp,
      news: news ?? this.news,
      events: events ?? this.events,
      alerts: alerts ?? this.alerts,
      sortie: sortie ?? this.sortie,
      syndicateMissions: syndicateMissions ?? this.syndicateMissions,
      fissures: fissures ?? this.fissures,
      invasions: invasions ?? this.invasions,
      voidTrader: voidTrader ?? this.voidTrader,
      dailyDeals: dailyDeals ?? this.dailyDeals,
      persistentEnemies: persistentEnemies ?? this.persistentEnemies,
      earthCycle: earthCycle ?? this.earthCycle,
      cetusCycle: cetusCycle ?? this.cetusCycle,
      constructionProgress: constructionProgress ?? this.constructionProgress,
      vallisCycle: vallisCycle ?? this.vallisCycle,
      nightwave: nightwave ?? this.nightwave,
      sentientOutposts: sentientOutposts ?? this.sentientOutposts,
      arbitration: arbitration ?? this.arbitration,
      steelPath: steelPath ?? this.steelPath,
      zarimanCycle: zarimanCycle ?? this.zarimanCycle,
    );
  }
}
