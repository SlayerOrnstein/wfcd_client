// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mission_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MissionModel _$MissionModelFromJson(Map json) {
  return $checkedNew('MissionModel', json, () {
    final val = MissionModel(
      node: $checkedConvert(json, 'node', (v) => v as String),
      type: $checkedConvert(json, 'type', (v) => v as String),
      faction: $checkedConvert(json, 'faction', (v) => v as String),
      minEnemyLevel: $checkedConvert(json, 'minEnemyLevel', (v) => v as int?),
      maxEnemyLevel: $checkedConvert(json, 'maxEnemyLevel', (v) => v as int?),
      maxWaveNum: $checkedConvert(json, 'maxWaveNum', (v) => v as int?),
      nightmare: $checkedConvert(json, 'nightmare', (v) => v as bool?),
      archwingRequired:
          $checkedConvert(json, 'archwingRequired', (v) => v as bool?),
      reward: $checkedConvert(
          json,
          'reward',
          (v) => v == null
              ? null
              : RewardModel.fromJson(Map<String, dynamic>.from(v as Map))),
      exclusiveWeapon:
          $checkedConvert(json, 'exclusiveWeapon', (v) => v as String?),
    );
    return val;
  });
}

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
