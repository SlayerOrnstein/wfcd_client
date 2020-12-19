// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'misc_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BasicItemModel _$BasicItemModelFromJson(Map<String, dynamic> json) {
  return BasicItemModel(
    uniqueName: json['uniqueName'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    type: json['type'] as String,
    imageName: json['imageName'] as String,
    productCategory: json['productCategory'] as String,
    category: json['category'] as String,
    tradable: json['tradable'] as bool,
    masteryReq: json['masteryReq'] as int,
    components: (json['components'] as List)
        ?.map((e) => e == null
            ? null
            : ComponentModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    drops: (json['drops'] as List)
        ?.map((e) =>
            e == null ? null : DropModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    buildPrice: json['buildPrice'] as int,
    buildTime: json['buildTime'] as int,
    skipBuildTimePrice: json['skipBuildTimePrice'] as int,
    buildQuantity: json['buildQuantity'] as int,
    consumeOnBuild: json['consumeOnBuild'] as bool,
    patchlogs: (json['patchlogs'] as List)
        ?.map((e) => e == null
            ? null
            : PatchlogModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    wikiaUrl: json['wikiaUrl'] as String,
    wikiaThumbnail: json['wikiaThumbnail'] as String,
  );
}

Map<String, dynamic> _$BasicItemModelToJson(BasicItemModel instance) =>
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
      'components': instance.components,
      'patchlogs': instance.patchlogs,
      'drops': instance.drops,
    };

SolNodeModel _$SolNodeModelFromJson(Map<String, dynamic> json) {
  return SolNodeModel(
    uniqueName: json['uniqueName'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    type: json['type'] as String,
    imageName: json['imageName'] as String,
    category: json['category'] as String,
    tradable: json['tradable'] as bool,
    systemIndex: json['systemIndex'] as int,
    systemName: json['systemName'] as String,
    masterReq: json['masterReq'] as int,
    missionIndex: json['missionIndex'] as int,
    factionIndex: json['factionIndex'] as int,
    minEnemyLevel: json['minEnemyLevel'] as int,
    maxEnemyLevel: json['maxEnemyLevel'] as int,
    patchlogs: (json['patchlogs'] as List)
        ?.map((e) => e == null
            ? null
            : PatchlogModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SolNodeModelToJson(SolNodeModel instance) =>
    <String, dynamic>{
      'uniqueName': instance.uniqueName,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'imageName': instance.imageName,
      'category': instance.category,
      'tradable': instance.tradable,
      'systemIndex': instance.systemIndex,
      'systemName': instance.systemName,
      'masterReq': instance.masterReq,
      'missionIndex': instance.missionIndex,
      'factionIndex': instance.factionIndex,
      'minEnemyLevel': instance.minEnemyLevel,
      'maxEnemyLevel': instance.maxEnemyLevel,
      'patchlogs': instance.patchlogs,
    };
