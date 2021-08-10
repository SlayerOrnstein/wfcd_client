// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enemy_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EnemyModel _$EnemyModelFromJson(Map json) {
  return $checkedNew('EnemyModel', json, () {
    final val = EnemyModel(
      uniqueName: $checkedConvert(json, 'uniqueName', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
      description: $checkedConvert(json, 'description', (v) => v as String),
      type: $checkedConvert(json, 'type', (v) => v as String),
      imageName: $checkedConvert(json, 'imageName', (v) => v as String),
      category: $checkedConvert(json, 'category', (v) => v as String),
      tradable: $checkedConvert(json, 'tradable', (v) => v as bool),
      health: $checkedConvert(json, 'health', (v) => v as int),
      shield: $checkedConvert(json, 'shield', (v) => v as int),
      armor: $checkedConvert(json, 'armor', (v) => v as int),
      regionBits: $checkedConvert(json, 'regionBits', (v) => v as int),
      resistances: $checkedConvert(
          json,
          'resistances',
          (v) => (v as List<dynamic>)
              .map((e) => ResistancesModel.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList()),
      patchlogs: $checkedConvert(
          json,
          'patchlogs',
          (v) => (v as List<dynamic>?)
              ?.map((e) =>
                  PatchlogModel.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList()),
      drops: $checkedConvert(
          json,
          'drops',
          (v) => (v as List<dynamic>?)
              ?.map((e) =>
                  DropModel.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList()),
    );
    return val;
  });
}

Map<String, dynamic> _$EnemyModelToJson(EnemyModel instance) =>
    <String, dynamic>{
      'uniqueName': instance.uniqueName,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'imageName': instance.imageName,
      'category': instance.category,
      'tradable': instance.tradable,
      'health': instance.health,
      'shield': instance.shield,
      'armor': instance.armor,
      'regionBits': instance.regionBits,
      'resistances': instance.resistances.map((e) => e.toJson()).toList(),
      'drops': instance.drops?.map((e) => e.toJson()).toList(),
      'patchlogs': instance.patchlogs?.map((e) => e.toJson()).toList(),
    };

ResistancesModel _$ResistancesModelFromJson(Map json) {
  return $checkedNew('ResistancesModel', json, () {
    final val = ResistancesModel(
      amount: $checkedConvert(json, 'amount', (v) => v as int),
      type: $checkedConvert(json, 'type', (v) => v as String),
      affectors: $checkedConvert(
          json,
          'affectors',
          (v) => (v as List<dynamic>)
              .map((e) =>
                  AffectorsModel.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList()),
    );
    return val;
  });
}

Map<String, dynamic> _$ResistancesModelToJson(ResistancesModel instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'type': instance.type,
      'affectors': instance.affectors.map((e) => e.toJson()).toList(),
    };

AffectorsModel _$AffectorsModelFromJson(Map json) {
  return $checkedNew('AffectorsModel', json, () {
    final val = AffectorsModel(
      element: $checkedConvert(json, 'element', (v) => v as String),
      modifier: $checkedConvert(json, 'modifier', (v) => (v as num).toDouble()),
    );
    return val;
  });
}

Map<String, dynamic> _$AffectorsModelToJson(AffectorsModel instance) =>
    <String, dynamic>{
      'element': instance.element,
      'modifier': instance.modifier,
    };
