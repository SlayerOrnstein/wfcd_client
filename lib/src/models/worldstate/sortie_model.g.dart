// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sortie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SortieModel _$SortieModelFromJson(Map json) {
  return $checkedNew('SortieModel', json, () {
    final val = SortieModel(
      id: $checkedConvert(json, 'id', (v) => v as String),
      activation: $checkedConvert(
          json, 'activation', (v) => DateTime.parse(v as String)),
      expiry:
          $checkedConvert(json, 'expiry', (v) => DateTime.parse(v as String)),
      boss: $checkedConvert(json, 'boss', (v) => v as String),
      faction: $checkedConvert(json, 'faction', (v) => v as String),
      variants: $checkedConvert(
          json,
          'variants',
          (v) => (v as List<dynamic>)
              .map((e) =>
                  VariantModel.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList()),
    );
    return val;
  });
}

Map<String, dynamic> _$SortieModelToJson(SortieModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'boss': instance.boss,
      'faction': instance.faction,
      'variants': instance.variants.map((e) => e.toJson()).toList(),
    };

VariantModel _$VariantModelFromJson(Map json) {
  return $checkedNew('VariantModel', json, () {
    final val = VariantModel(
      missionType: $checkedConvert(json, 'missionType', (v) => v as String),
      modifier: $checkedConvert(json, 'modifier', (v) => v as String),
      modifierDescription:
          $checkedConvert(json, 'modifierDescription', (v) => v as String),
      node: $checkedConvert(json, 'node', (v) => v as String),
    );
    return val;
  });
}

Map<String, dynamic> _$VariantModelToJson(VariantModel instance) =>
    <String, dynamic>{
      'missionType': instance.missionType,
      'modifier': instance.modifier,
      'modifierDescription': instance.modifierDescription,
      'node': instance.node,
    };
