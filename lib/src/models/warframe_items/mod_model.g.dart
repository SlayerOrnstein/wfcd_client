// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mod_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModModel _$ModModelFromJson(Map json) {
  return $checkedNew('ModModel', json, () {
    final val = ModModel(
      uniqueName: $checkedConvert(json, 'uniqueName', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
      description: $checkedConvert(json, 'description', (v) => v as String?),
      imageName: $checkedConvert(json, 'imageName', (v) => v as String),
      polarity: $checkedConvert(json, 'polarity', (v) => v as String),
      rarity: $checkedConvert(json, 'rarity', (v) => v as String),
      baseDrain: $checkedConvert(json, 'baseDrain', (v) => v as int),
      fusionLimit: $checkedConvert(json, 'fusionLimit', (v) => v as int),
      transmutable: $checkedConvert(json, 'transmutable', (v) => v as bool?),
      compatName: $checkedConvert(json, 'compatName', (v) => v as String?),
      type: $checkedConvert(json, 'type', (v) => v as String),
      levelStats: $checkedConvert(
          json,
          'levelStats',
          (v) => (v as List<dynamic>?)
              ?.map((e) => (e as Map).map(
                    (k, e) => MapEntry(k as String,
                        (e as List<dynamic>).map((e) => e as String).toList()),
                  ))
              .toList()),
      category: $checkedConvert(json, 'category', (v) => v as String),
      drops: $checkedConvert(
          json,
          'drops',
          (v) => (v as List<dynamic>)
              .map((e) =>
                  DropModel.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList()),
      isAugment: $checkedConvert(json, 'isAugment', (v) => v as bool?),
      tradable: $checkedConvert(json, 'tradable', (v) => v as bool),
      patchlogs: $checkedConvert(
          json,
          'patchlogs',
          (v) => (v as List<dynamic>?)
              ?.map((e) =>
                  PatchlogModel.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList()),
      wikiaThumbnail:
          $checkedConvert(json, 'wikiaThumbnail', (v) => v as String?),
      wikiaUrl: $checkedConvert(json, 'wikiaUrl', (v) => v as String?),
    );
    return val;
  });
}

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
      'baseDrain': instance.baseDrain,
      'fusionLimit': instance.fusionLimit,
      'levelStats': instance.levelStats,
      'isAugment': instance.isAugment,
      'transmutable': instance.transmutable,
      'drops': instance.drops.map((e) => e.toJson()).toList(),
      'patchlogs': instance.patchlogs?.map((e) => e.toJson()).toList(),
    };
