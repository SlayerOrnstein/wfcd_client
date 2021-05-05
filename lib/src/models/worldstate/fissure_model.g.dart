// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fissure_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VoidFissureModel _$VoidFissureModelFromJson(Map json) {
  return $checkedNew('VoidFissureModel', json, () {
    final val = VoidFissureModel(
      id: $checkedConvert(json, 'id', (v) => v as String),
      activation: $checkedConvert(
          json, 'activation', (v) => DateTime.parse(v as String)),
      expiry:
          $checkedConvert(json, 'expiry', (v) => DateTime.parse(v as String)),
      node: $checkedConvert(json, 'node', (v) => v as String),
      missionType: $checkedConvert(json, 'missionType', (v) => v as String),
      enemy: $checkedConvert(json, 'enemy', (v) => v as String),
      tier: $checkedConvert(json, 'tier', (v) => v as String),
      tierNum: $checkedConvert(json, 'tierNum', (v) => v as int),
      active: $checkedConvert(json, 'active', (v) => v as bool),
      expired: $checkedConvert(json, 'expired', (v) => v as bool),
      isStorm: $checkedConvert(json, 'isStorm', (v) => v as bool),
    );
    return val;
  });
}

Map<String, dynamic> _$VoidFissureModelToJson(VoidFissureModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'node': instance.node,
      'missionType': instance.missionType,
      'enemy': instance.enemy,
      'tier': instance.tier,
      'tierNum': instance.tierNum,
      'active': instance.active,
      'expired': instance.expired,
      'isStorm': instance.isStorm,
    };
