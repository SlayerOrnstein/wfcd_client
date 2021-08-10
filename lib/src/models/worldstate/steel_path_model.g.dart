// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'steel_path_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SteelPathMdoel _$SteelPathMdoelFromJson(Map json) => $checkedCreate(
      'SteelPathMdoel',
      json,
      ($checkedConvert) {
        final val = SteelPathMdoel(
          activation:
              $checkedConvert('activation', (v) => DateTime.parse(v as String)),
          expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
          currentReward: $checkedConvert(
              'currentReward',
              (v) => SteelPathRewardModel.fromJson(
                  Map<String, dynamic>.from(v as Map))),
          rotation: $checkedConvert(
              'rotation',
              (v) => (v as List<dynamic>)
                  .map((e) => SteelPathRewardModel.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$SteelPathMdoelToJson(SteelPathMdoel instance) =>
    <String, dynamic>{
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'currentReward': instance.currentReward.toJson(),
      'rotation': instance.rotation.map((e) => e.toJson()).toList(),
    };

SteelPathRewardModel _$SteelPathRewardModelFromJson(Map json) => $checkedCreate(
      'SteelPathRewardModel',
      json,
      ($checkedConvert) {
        final val = SteelPathRewardModel(
          name: $checkedConvert('name', (v) => v as String),
          cost: $checkedConvert('cost', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$SteelPathRewardModelToJson(
        SteelPathRewardModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'cost': instance.cost,
    };
