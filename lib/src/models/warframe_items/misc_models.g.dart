// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'misc_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MiscItemModel _$MiscItemModelFromJson(Map json) {
  return $checkedNew('MiscItemModel', json, () {
    final val = MiscItemModel(
      uniqueName: $checkedConvert(json, 'uniqueName', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
      description: $checkedConvert(json, 'description', (v) => v as String),
      type: $checkedConvert(json, 'type', (v) => v as String),
      imageName: $checkedConvert(json, 'imageName', (v) => v as String?),
      productCategory:
          $checkedConvert(json, 'productCategory', (v) => v as String?),
      category: $checkedConvert(json, 'category', (v) => v as String),
      tradable: $checkedConvert(json, 'tradable', (v) => v as bool),
      patchlogs: $checkedConvert(
          json,
          'patchlogs',
          (v) => (v as List<dynamic>?)
              ?.map((e) =>
                  PatchlogModel.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList()),
      wikiaUrl: $checkedConvert(json, 'wikiaUrl', (v) => v as String?),
      wikiaThumbnail:
          $checkedConvert(json, 'wikiaThumbnail', (v) => v as String?),
    );
    return val;
  });
}

Map<String, dynamic> _$MiscItemModelToJson(MiscItemModel instance) =>
    <String, dynamic>{
      'uniqueName': instance.uniqueName,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'imageName': instance.imageName,
      'productCategory': instance.productCategory,
      'category': instance.category,
      'tradable': instance.tradable,
      'wikiaUrl': instance.wikiaUrl,
      'wikiaThumbnail': instance.wikiaThumbnail,
      'patchlogs': instance.patchlogs?.map((e) => e.toJson()).toList(),
    };

MiscFoundryItemModel _$MiscFoundryItemModelFromJson(Map json) {
  return $checkedNew('MiscFoundryItemModel', json, () {
    final val = MiscFoundryItemModel(
      uniqueName: $checkedConvert(json, 'uniqueName', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
      description: $checkedConvert(json, 'description', (v) => v as String),
      type: $checkedConvert(json, 'type', (v) => v as String),
      imageName: $checkedConvert(json, 'imageName', (v) => v as String),
      productCategory:
          $checkedConvert(json, 'productCategory', (v) => v as String?),
      category: $checkedConvert(json, 'category', (v) => v as String),
      tradable: $checkedConvert(json, 'tradable', (v) => v as bool),
      masteryReq: $checkedConvert(json, 'masteryReq', (v) => v as int?),
      drops: $checkedConvert(
          json,
          'drops',
          (v) => (v as List<dynamic>?)
              ?.map((e) =>
                  DropModel.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList()),
      buildPrice: $checkedConvert(json, 'buildPrice', (v) => v as int),
      buildTime: $checkedConvert(json, 'buildTime', (v) => v as int),
      skipBuildTimePrice:
          $checkedConvert(json, 'skipBuildTimePrice', (v) => v as int),
      buildQuantity: $checkedConvert(json, 'buildQuantity', (v) => v as int),
      consumeOnBuild: $checkedConvert(json, 'consumeOnBuild', (v) => v as bool),
      patchlogs: $checkedConvert(
          json,
          'patchlogs',
          (v) => (v as List<dynamic>?)
              ?.map((e) =>
                  PatchlogModel.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList()),
      wikiaUrl: $checkedConvert(json, 'wikiaUrl', (v) => v as String?),
      wikiaThumbnail:
          $checkedConvert(json, 'wikiaThumbnail', (v) => v as String?),
    );
    return val;
  });
}

Map<String, dynamic> _$MiscFoundryItemModelToJson(
        MiscFoundryItemModel instance) =>
    <String, dynamic>{
      'uniqueName': instance.uniqueName,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'imageName': instance.imageName,
      'productCategory': instance.productCategory,
      'category': instance.category,
      'tradable': instance.tradable,
      'wikiaUrl': instance.wikiaUrl,
      'wikiaThumbnail': instance.wikiaThumbnail,
      'masteryReq': instance.masteryReq,
      'buildPrice': instance.buildPrice,
      'buildTime': instance.buildTime,
      'skipBuildTimePrice': instance.skipBuildTimePrice,
      'buildQuantity': instance.buildQuantity,
      'consumeOnBuild': instance.consumeOnBuild,
      'patchlogs': instance.patchlogs?.map((e) => e.toJson()).toList(),
      'drops': instance.drops?.map((e) => e.toJson()).toList(),
    };
