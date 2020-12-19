// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enemy_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EnemyModel _$EnemyModelFromJson(Map<String, dynamic> json) {
  return EnemyModel(
    uniqueName: json['uniqueName'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    type: json['type'] as String,
    imageName: json['imageName'] as String,
    category: json['category'] as String,
    tradable: json['tradable'] as bool,
    health: json['health'] as int,
    shield: json['shield'] as int,
    armor: json['armor'] as int,
    regionBits: json['regionBits'] as int,
    resistances: (json['resistances'] as List)
        ?.map((e) => e == null
            ? null
            : ResistancesModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    patchlogs: (json['patchlogs'] as List)
        ?.map((e) => e == null
            ? null
            : PatchlogModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    drops: (json['drops'] as List)
        ?.map((e) =>
            e == null ? null : DropModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
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
      'resistances': instance.resistances,
      'drops': instance.drops,
      'patchlogs': instance.patchlogs,
    };

ResistancesModel _$ResistancesModelFromJson(Map<String, dynamic> json) {
  return ResistancesModel(
    amount: json['amount'] as int,
    type: json['type'] as String,
    affectors: (json['affectors'] as List)
        ?.map((e) => e == null
            ? null
            : AffectorsModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ResistancesModelToJson(ResistancesModel instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'type': instance.type,
      'affectors': instance.affectors,
    };

AffectorsModel _$AffectorsModelFromJson(Map<String, dynamic> json) {
  return AffectorsModel(
    element: json['element'] as String,
    modifier: (json['modifier'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$AffectorsModelToJson(AffectorsModel instance) =>
    <String, dynamic>{
      'element': instance.element,
      'modifier': instance.modifier,
    };
