// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sortie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SortieModel _$SortieModelFromJson(Map json) => $checkedCreate(
      'SortieModel',
      json,
      ($checkedConvert) {
        final val = SortieModel(
          id: $checkedConvert('id', (v) => v as String),
          activation:
              $checkedConvert('activation', (v) => DateTime.parse(v as String)),
          expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
          boss: $checkedConvert('boss', (v) => v as String),
          faction: $checkedConvert('faction', (v) => v as String),
          factionKey: $checkedConvert('factionKey', (v) => v as String),
          variants: $checkedConvert(
              'variants',
              (v) => (v as List<dynamic>)
                  .map((e) => VariantModel.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$SortieModelToJson(SortieModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'boss': instance.boss,
      'faction': instance.faction,
      'factionKey': instance.factionKey,
      'variants': instance.variants.map((e) => e.toJson()).toList(),
    };

VariantModel _$VariantModelFromJson(Map json) => $checkedCreate(
      'VariantModel',
      json,
      ($checkedConvert) {
        final val = VariantModel(
          missionType: $checkedConvert('missionType', (v) => v as String),
          modifier: $checkedConvert('modifier', (v) => v as String),
          modifierDescription:
              $checkedConvert('modifierDescription', (v) => v as String),
          node: $checkedConvert('node', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$VariantModelToJson(VariantModel instance) =>
    <String, dynamic>{
      'missionType': instance.missionType,
      'modifier': instance.modifier,
      'modifierDescription': instance.modifierDescription,
      'node': instance.node,
    };
