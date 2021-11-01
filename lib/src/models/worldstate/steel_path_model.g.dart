// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'steel_path_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SteelPathModel _$SteelPathModelFromJson(Map json) {
  return $checkedNew('SteelPathModel', json, () {
    final val = SteelPathModel(
      activation: $checkedConvert(
          json, 'activation', (v) => DateTime.parse(v as String)),
      expiry:
          $checkedConvert(json, 'expiry', (v) => DateTime.parse(v as String)),
      currentReward: $checkedConvert(
          json,
          'currentReward',
          (v) => SteelPathRewardModel.fromJson(
              Map<String, dynamic>.from(v as Map))),
      rotation: $checkedConvert(
          json,
          'rotation',
          (v) => (v as List<dynamic>)
              .map((e) => SteelPathRewardModel.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList()),
    );
    return val;
  });
}

Map<String, dynamic> _$SteelPathModelToJson(SteelPathModel instance) =>
    <String, dynamic>{
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'currentReward': instance.currentReward.toJson(),
      'rotation': instance.rotation.map((e) => e.toJson()).toList(),
    };

SteelPathRewardModel _$SteelPathRewardModelFromJson(Map json) {
  return $checkedNew('SteelPathRewardModel', json, () {
    final val = SteelPathRewardModel(
      name: $checkedConvert(json, 'name', (v) => v as String),
      cost: $checkedConvert(json, 'cost', (v) => v as int),
    );
    return val;
  });
}

Map<String, dynamic> _$SteelPathRewardModelToJson(
        SteelPathRewardModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'cost': instance.cost,
    };
