// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'steel_path_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SteelPathMdoel _$SteelPathMdoelFromJson(Map json) {
  return $checkedNew('SteelPathMdoel', json, () {
    final val = SteelPathMdoel(
      activation: $checkedConvert(
          json, 'activation', (v) => DateTime.parse(v as String)),
      expiry:
          $checkedConvert(json, 'expiry', (v) => DateTime.parse(v as String)),
      currentReward: $checkedConvert(json, 'currentReward', (v) => v as String),
      rotation: $checkedConvert(json, 'rotation',
          (v) => (v as List<dynamic>).map((e) => e as String).toList()),
    );
    return val;
  });
}

Map<String, dynamic> _$SteelPathMdoelToJson(SteelPathMdoel instance) =>
    <String, dynamic>{
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'currentReward': instance.currentReward,
      'rotation': instance.rotation,
    };
