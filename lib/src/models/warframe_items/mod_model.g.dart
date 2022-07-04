// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mod_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModModel _$ModModelFromJson(Map json) => $checkedCreate(
      'ModModel',
      json,
      ($checkedConvert) {
        final val = ModModel(
          uniqueName: $checkedConvert('uniqueName', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          imageName: $checkedConvert('imageName', (v) => v as String),
          polarity: $checkedConvert('polarity', (v) => v as String),
          rarity: $checkedConvert('rarity', (v) => v as String),
          baseDrain: $checkedConvert('baseDrain', (v) => v as int),
          fusionLimit: $checkedConvert('fusionLimit', (v) => v as int),
          transmutable: $checkedConvert('transmutable', (v) => v as bool?),
          compatName: $checkedConvert('compatName', (v) => v as String?),
          modSet: $checkedConvert('modSet', (v) => v as String?),
          type: $checkedConvert('type', (v) => v as String),
          levelStats: $checkedConvert(
              'levelStats',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => (e as Map).map(
                        (k, e) => MapEntry(
                            k as String,
                            (e as List<dynamic>)
                                .map((e) => e as String)
                                .toList()),
                      ))
                  .toList()),
          category: $checkedConvert('category', (v) => v as String),
          drops: $checkedConvert(
              'drops',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      DropModel.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          isAugment: $checkedConvert('isAugment', (v) => v as bool?),
          tradable: $checkedConvert('tradable', (v) => v as bool?),
          patchlogs: $checkedConvert(
              'patchlogs',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => PatchlogModel.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
          wikiaThumbnail:
              $checkedConvert('wikiaThumbnail', (v) => v as String?),
          wikiaUrl: $checkedConvert('wikiaUrl', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$ModModelToJson(ModModel instance) => <String, dynamic>{
      'uniqueName': instance.uniqueName,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'imageName': instance.imageName,
      'category': instance.category,
      'tradable': instance.tradable,
      'wikiaUrl': instance.wikiaUrl,
      'wikiaThumbnail': instance.wikiaThumbnail,
      'polarity': instance.polarity,
      'rarity': instance.rarity,
      'compatName': instance.compatName,
      'modSet': instance.modSet,
      'baseDrain': instance.baseDrain,
      'fusionLimit': instance.fusionLimit,
      'levelStats': instance.levelStats,
      'isAugment': instance.isAugment,
      'transmutable': instance.transmutable,
      'drops': instance.drops?.map((e) => e.toJson()).toList(),
      'patchlogs': instance.patchlogs?.map((e) => e.toJson()).toList(),
    };
