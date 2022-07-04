// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'misc_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MiscItemModel _$MiscItemModelFromJson(Map json) => $checkedCreate(
      'MiscItemModel',
      json,
      ($checkedConvert) {
        final val = MiscItemModel(
          uniqueName: $checkedConvert('uniqueName', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          type: $checkedConvert('type', (v) => v as String),
          imageName: $checkedConvert('imageName', (v) => v as String?),
          productCategory:
              $checkedConvert('productCategory', (v) => v as String?),
          category: $checkedConvert('category', (v) => v as String),
          tradable: $checkedConvert('tradable', (v) => v as bool?),
          patchlogs: $checkedConvert(
              'patchlogs',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => PatchlogModel.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
          wikiaUrl: $checkedConvert('wikiaUrl', (v) => v as String?),
          wikiaThumbnail:
              $checkedConvert('wikiaThumbnail', (v) => v as String?),
        );
        return val;
      },
    );

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

MiscFoundryItemModel _$MiscFoundryItemModelFromJson(Map json) => $checkedCreate(
      'MiscFoundryItemModel',
      json,
      ($checkedConvert) {
        final val = MiscFoundryItemModel(
          uniqueName: $checkedConvert('uniqueName', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          type: $checkedConvert('type', (v) => v as String),
          imageName: $checkedConvert('imageName', (v) => v as String),
          productCategory:
              $checkedConvert('productCategory', (v) => v as String?),
          category: $checkedConvert('category', (v) => v as String),
          tradable: $checkedConvert('tradable', (v) => v as bool?),
          masteryReq: $checkedConvert('masteryReq', (v) => v as int?),
          drops: $checkedConvert(
              'drops',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      DropModel.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          buildPrice: $checkedConvert('buildPrice', (v) => v as int),
          buildTime: $checkedConvert('buildTime', (v) => v as int),
          skipBuildTimePrice:
              $checkedConvert('skipBuildTimePrice', (v) => v as int),
          buildQuantity: $checkedConvert('buildQuantity', (v) => v as int),
          consumeOnBuild: $checkedConvert('consumeOnBuild', (v) => v as bool),
          patchlogs: $checkedConvert(
              'patchlogs',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => PatchlogModel.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
          wikiaUrl: $checkedConvert('wikiaUrl', (v) => v as String?),
          wikiaThumbnail:
              $checkedConvert('wikiaThumbnail', (v) => v as String?),
        );
        return val;
      },
    );

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
