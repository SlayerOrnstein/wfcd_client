// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'steel_path_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SteelPathModel _$SteelPathModelFromJson(Map json) => $checkedCreate(
      'SteelPathModel',
      json,
      ($checkedConvert) {
        final val = SteelPathModel(
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
          evergreens: $checkedConvert(
              'evergreens',
              (v) => (v as List<dynamic>)
                  .map((e) => SteelPathRewardModel.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
          incursions: $checkedConvert(
              'incursions', (v) => IncursionsModel.fromJson(v as Map)),
        );
        return val;
      },
    );

Map<String, dynamic> _$SteelPathModelToJson(SteelPathModel instance) =>
    <String, dynamic>{
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'currentReward': instance.currentReward.toJson(),
      'rotation': instance.rotation.map((e) => e.toJson()).toList(),
      'evergreens': instance.evergreens.map((e) => e.toJson()).toList(),
      'incursions': instance.incursions.toJson(),
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

IncursionsModel _$IncursionsModelFromJson(Map json) => $checkedCreate(
      'IncursionsModel',
      json,
      ($checkedConvert) {
        final val = IncursionsModel(
          id: $checkedConvert('id', (v) => v as String?),
          activation: $checkedConvert('activation',
              (v) => v == null ? null : DateTime.parse(v as String)),
          expiry: $checkedConvert(
              'expiry', (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$IncursionsModelToJson(IncursionsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
    };
