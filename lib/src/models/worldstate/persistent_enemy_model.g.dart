// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persistent_enemy_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersistentEnemyModel _$PersistentEnemyModelFromJson(Map json) {
  return $checkedNew('PersistentEnemyModel', json, () {
    final val = PersistentEnemyModel(
      id: $checkedConvert(json, 'id', (v) => v as String),
      activation: $checkedConvert(
          json, 'activation', (v) => DateTime.parse(v as String)),
      expiry:
          $checkedConvert(json, 'expiry', (v) => DateTime.parse(v as String)),
      agentType: $checkedConvert(json, 'agentType', (v) => v as String),
      locationTag: $checkedConvert(json, 'locationTag', (v) => v as String),
      lastDiscoveredAt:
          $checkedConvert(json, 'lastDiscoveredAt', (v) => v as String),
      lastDiscoveredTime: $checkedConvert(
          json, 'lastDiscoveredTime', (v) => DateTime.parse(v as String)),
      fleeDamage: $checkedConvert(json, 'fleeDamage', (v) => v as int),
      rank: $checkedConvert(json, 'rank', (v) => v as int),
      healthPercent:
          $checkedConvert(json, 'healthPercent', (v) => (v as num).toDouble()),
      isDiscovered: $checkedConvert(json, 'isDiscovered', (v) => v as bool),
      isUsingTicketing:
          $checkedConvert(json, 'isUsingTicketing', (v) => v as bool),
    );
    return val;
  });
}

Map<String, dynamic> _$PersistentEnemyModelToJson(
        PersistentEnemyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'agentType': instance.agentType,
      'locationTag': instance.locationTag,
      'lastDiscoveredAt': instance.lastDiscoveredAt,
      'lastDiscoveredTime': instance.lastDiscoveredTime.toIso8601String(),
      'fleeDamage': instance.fleeDamage,
      'rank': instance.rank,
      'healthPercent': instance.healthPercent,
      'isDiscovered': instance.isDiscovered,
      'isUsingTicketing': instance.isUsingTicketing,
    };
