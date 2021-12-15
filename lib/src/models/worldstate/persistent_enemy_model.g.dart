// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persistent_enemy_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersistentEnemyModel _$PersistentEnemyModelFromJson(Map json) => $checkedCreate(
      'PersistentEnemyModel',
      json,
      ($checkedConvert) {
        final val = PersistentEnemyModel(
          id: $checkedConvert('id', (v) => v as String),
          activation:
              $checkedConvert('activation', (v) => DateTime.parse(v as String)),
          expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
          agentType: $checkedConvert('agentType', (v) => v as String),
          locationTag: $checkedConvert('locationTag', (v) => v as String),
          lastDiscoveredAt:
              $checkedConvert('lastDiscoveredAt', (v) => v as String),
          lastDiscoveredTime: $checkedConvert(
              'lastDiscoveredTime', (v) => DateTime.parse(v as String)),
          fleeDamage: $checkedConvert('fleeDamage', (v) => v as int),
          rank: $checkedConvert('rank', (v) => v as int),
          healthPercent:
              $checkedConvert('healthPercent', (v) => (v as num).toDouble()),
          isDiscovered: $checkedConvert('isDiscovered', (v) => v as bool),
          isUsingTicketing:
              $checkedConvert('isUsingTicketing', (v) => v as bool),
        );
        return val;
      },
    );

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
