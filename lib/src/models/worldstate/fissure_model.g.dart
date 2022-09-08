// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fissure_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VoidFissureModel _$VoidFissureModelFromJson(Map json) => $checkedCreate(
      'VoidFissureModel',
      json,
      ($checkedConvert) {
        final val = VoidFissureModel(
          id: $checkedConvert('id', (v) => v as String),
          activation:
              $checkedConvert('activation', (v) => DateTime.parse(v as String)),
          expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
          node: $checkedConvert('node', (v) => v as String),
          missionType: $checkedConvert('missionType', (v) => v as String),
          enemy: $checkedConvert('enemy', (v) => v as String),
          tier: $checkedConvert('tier', (v) => v as String),
          tierNum: $checkedConvert('tierNum', (v) => v as int),
          active: $checkedConvert('active', (v) => v as bool),
          expired: $checkedConvert('expired', (v) => v as bool),
          isStorm: $checkedConvert('isStorm', (v) => v as bool?),
          isHard: $checkedConvert('isHard', (v) => v as bool?),
        );
        return val;
      },
    );

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
      'isHard': instance.isHard,
    };
