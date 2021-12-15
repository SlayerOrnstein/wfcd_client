// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mission_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MissionModel _$MissionModelFromJson(Map json) => $checkedCreate(
      'MissionModel',
      json,
      ($checkedConvert) {
        final val = MissionModel(
          node: $checkedConvert('node', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
          faction: $checkedConvert('faction', (v) => v as String),
          minEnemyLevel: $checkedConvert('minEnemyLevel', (v) => v as int?),
          maxEnemyLevel: $checkedConvert('maxEnemyLevel', (v) => v as int?),
          maxWaveNum: $checkedConvert('maxWaveNum', (v) => v as int?),
          nightmare: $checkedConvert('nightmare', (v) => v as bool?),
          archwingRequired:
              $checkedConvert('archwingRequired', (v) => v as bool?),
          reward: $checkedConvert(
              'reward',
              (v) => v == null
                  ? null
                  : RewardModel.fromJson(Map<String, dynamic>.from(v as Map))),
          exclusiveWeapon:
              $checkedConvert('exclusiveWeapon', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$MissionModelToJson(MissionModel instance) =>
    <String, dynamic>{
      'node': instance.node,
      'type': instance.type,
      'faction': instance.faction,
      'exclusiveWeapon': instance.exclusiveWeapon,
      'minEnemyLevel': instance.minEnemyLevel,
      'maxEnemyLevel': instance.maxEnemyLevel,
      'maxWaveNum': instance.maxWaveNum,
      'nightmare': instance.nightmare,
      'archwingRequired': instance.archwingRequired,
      'reward': instance.reward?.toJson(),
    };
