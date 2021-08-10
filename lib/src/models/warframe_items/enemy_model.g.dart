// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enemy_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EnemyModel _$EnemyModelFromJson(Map json) => $checkedCreate(
      'EnemyModel',
      json,
      ($checkedConvert) {
        final val = EnemyModel(
          uniqueName: $checkedConvert('uniqueName', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
          imageName: $checkedConvert('imageName', (v) => v as String),
          category: $checkedConvert('category', (v) => v as String),
          tradable: $checkedConvert('tradable', (v) => v as bool),
          health: $checkedConvert('health', (v) => v as int),
          shield: $checkedConvert('shield', (v) => v as int),
          armor: $checkedConvert('armor', (v) => v as int),
          regionBits: $checkedConvert('regionBits', (v) => v as int),
          resistances: $checkedConvert(
              'resistances',
              (v) => (v as List<dynamic>)
                  .map((e) => ResistancesModel.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
          patchlogs: $checkedConvert(
              'patchlogs',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => PatchlogModel.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
          drops: $checkedConvert(
              'drops',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      DropModel.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
    );

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

ResistancesModel _$ResistancesModelFromJson(Map json) => $checkedCreate(
      'ResistancesModel',
      json,
      ($checkedConvert) {
        final val = ResistancesModel(
          amount: $checkedConvert('amount', (v) => v as int),
          type: $checkedConvert('type', (v) => v as String),
          affectors: $checkedConvert(
              'affectors',
              (v) => (v as List<dynamic>)
                  .map((e) => AffectorsModel.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$ResistancesModelToJson(ResistancesModel instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'type': instance.type,
      'affectors': instance.affectors.map((e) => e.toJson()).toList(),
    };

AffectorsModel _$AffectorsModelFromJson(Map json) => $checkedCreate(
      'AffectorsModel',
      json,
      ($checkedConvert) {
        final val = AffectorsModel(
          element: $checkedConvert('element', (v) => v as String),
          modifier: $checkedConvert('modifier', (v) => (v as num).toDouble()),
        );
        return val;
      },
    );

Map<String, dynamic> _$AffectorsModelToJson(AffectorsModel instance) =>
    <String, dynamic>{
      'element': instance.element,
      'modifier': instance.modifier,
    };
