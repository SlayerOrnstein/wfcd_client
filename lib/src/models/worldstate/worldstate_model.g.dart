// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'worldstate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorldstateModel _$WorldstateModelFromJson(Map json) {
  return $checkedNew('WorldstateModel', json, () {
    final val = WorldstateModel(
      timestamp: $checkedConvert(
          json, 'timestamp', (v) => DateTime.parse(v as String)),
      news: $checkedConvert(
          json,
          'news',
          (v) => (v as List<dynamic>)
              .map((e) => OrbiterNewsModel.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList()),
      events: $checkedConvert(
          json,
          'events',
          (v) => (v as List<dynamic>)
              .map((e) =>
                  EventModel.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList()),
      alerts: $checkedConvert(
          json,
          'alerts',
          (v) => (v as List<dynamic>)
              .map((e) =>
                  AlertModel.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList()),
      sortie: $checkedConvert(json, 'sortie',
          (v) => SortieModel.fromJson(Map<String, dynamic>.from(v as Map))),
      syndicateMissions: $checkedConvert(
          json,
          'syndicateMissions',
          (v) => (v as List<dynamic>)
              .map((e) =>
                  SyndicateModel.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList()),
      fissures: $checkedConvert(
          json,
          'fissures',
          (v) => (v as List<dynamic>)
              .map((e) => VoidFissureModel.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList()),
      invasions: $checkedConvert(
          json,
          'invasions',
          (v) => (v as List<dynamic>)
              .map((e) =>
                  InvasionModel.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList()),
      voidTrader: $checkedConvert(json, 'voidTrader',
          (v) => VoidTraderModel.fromJson(Map<String, dynamic>.from(v as Map))),
      dailyDeals: $checkedConvert(
          json,
          'dailyDeals',
          (v) => (v as List<dynamic>)
              .map((e) =>
                  DarvoDealModel.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList()),
      persistentEnemies: $checkedConvert(
          json,
          'persistentEnemies',
          (v) => (v as List<dynamic>)
              .map((e) => PersistentEnemyModel.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList()),
      earthCycle: $checkedConvert(json, 'earthCycle',
          (v) => EarthModel.fromJson(Map<String, dynamic>.from(v as Map))),
      cetusCycle: $checkedConvert(json, 'cetusCycle',
          (v) => EarthModel.fromJson(Map<String, dynamic>.from(v as Map))),
      constructionProgress: $checkedConvert(
          json,
          'constructionProgress',
          (v) => ConstructionProgressModel.fromJson(
              Map<String, dynamic>.from(v as Map))),
      vallisCycle: $checkedConvert(json, 'vallisCycle',
          (v) => VallisModel.fromJson(Map<String, dynamic>.from(v as Map))),
      nightwave: $checkedConvert(json, 'nightwave',
          (v) => NightwaveModel.fromJson(Map<String, dynamic>.from(v as Map))),
      sentientOutposts: $checkedConvert(
          json,
          'sentientOutposts',
          (v) => SentientOutpostModel.fromJson(
              Map<String, dynamic>.from(v as Map))),
      arbitration: $checkedConvert(
          json,
          'arbitration',
          (v) =>
              ArbitrationModel.fromJson(Map<String, dynamic>.from(v as Map))),
      steelPath: $checkedConvert(
          json,
          'steelPath',
          (v) => v == null
              ? null
              : SteelPathMdoel.fromJson(Map<String, dynamic>.from(v as Map))),
    );
    return val;
  });
}

Map<String, dynamic> _$WorldstateModelToJson(WorldstateModel instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp.toIso8601String(),
      'news': instance.news.map((e) => e.toJson()).toList(),
      'events': instance.events.map((e) => e.toJson()).toList(),
      'alerts': instance.alerts.map((e) => e.toJson()).toList(),
      'sortie': instance.sortie.toJson(),
      'syndicateMissions':
          instance.syndicateMissions.map((e) => e.toJson()).toList(),
      'fissures': instance.fissures.map((e) => e.toJson()).toList(),
      'invasions': instance.invasions.map((e) => e.toJson()).toList(),
      'voidTrader': instance.voidTrader.toJson(),
      'dailyDeals': instance.dailyDeals.map((e) => e.toJson()).toList(),
      'persistentEnemies':
          instance.persistentEnemies.map((e) => e.toJson()).toList(),
      'earthCycle': instance.earthCycle.toJson(),
      'cetusCycle': instance.cetusCycle.toJson(),
      'constructionProgress': instance.constructionProgress.toJson(),
      'vallisCycle': instance.vallisCycle.toJson(),
      'nightwave': instance.nightwave.toJson(),
      'sentientOutposts': instance.sentientOutposts.toJson(),
      'arbitration': instance.arbitration.toJson(),
      'steelPath': instance.steelPath?.toJson(),
    };
