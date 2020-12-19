// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'power_suit_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AbilityModel _$AbilityModelFromJson(Map<String, dynamic> json) {
  return AbilityModel(
    name: json['name'] as String,
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$AbilityModelToJson(AbilityModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
    };

WarframeModel _$WarframeModelFromJson(Map<String, dynamic> json) {
  return WarframeModel(
    uniqueName: json['uniqueName'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    aura: json['aura'] as String,
    health: json['health'] as int,
    shield: json['shield'] as int,
    armor: json['armor'] as int,
    power: json['power'] as int,
    masteryReq: json['masteryReq'] as int,
    sprintSpeed: (json['sprintSpeed'] as num)?.toDouble(),
    passiveDescription: json['passiveDescription'] as String,
    abilities: (json['abilities'] as List)
        ?.map((e) =>
            e == null ? null : AbilityModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    buildPrice: json['buildPrice'] as int,
    buildTime: json['buildTime'] as int,
    skipBuildTimePrice: json['skipBuildTimePrice'] as int,
    buildQuantity: json['buildQuantity'] as int,
    consumeOnBuild: json['consumeOnBuild'] as bool,
    components: (json['components'] as List)
        ?.map((e) => e == null
            ? null
            : ComponentModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] as String,
    imageName: json['imageName'] as String,
    category: json['category'] as String,
    productCategory: json['productCategory'] as String,
    tradable: json['tradable'] as bool,
    patchlogs: (json['patchlogs'] as List)
        ?.map((e) => e == null
            ? null
            : PatchlogModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    wikiaThumbnail: json['wikiaThumbnail'] as String,
    wikiaUrl: json['wikiaUrl'] as String,
    sex: json['sex'] as String,
    introduced: json['introduced'] as String,
    polarities: (json['polarities'] as List)?.map((e) => e as String)?.toList(),
    color: json['color'] as int,
  );
}

Map<String, dynamic> _$WarframeModelToJson(WarframeModel instance) =>
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
      'health': instance.health,
      'shield': instance.shield,
      'armor': instance.armor,
      'power': instance.power,
      'polarities': instance.polarities,
      'sprintSpeed': instance.sprintSpeed,
      'aura': instance.aura,
      'passiveDescription': instance.passiveDescription,
      'introduced': instance.introduced,
      'sex': instance.sex,
      'color': instance.color,
      'components': instance.components,
      'abilities': instance.abilities,
      'patchlogs': instance.patchlogs,
    };

HeavyPowerSuitModel _$HeavyPowerSuitModelFromJson(Map<String, dynamic> json) {
  return HeavyPowerSuitModel(
    uniqueName: json['uniqueName'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    type: json['type'] as String,
    imageName: json['imageName'] as String,
    category: json['category'] as String,
    productCategory: json['productCategory'] as String,
    polarities: (json['polarities'] as List)?.map((e) => e as String)?.toList(),
    tradable: json['tradable'] as bool,
    masteryReq: json['masteryReq'] as int,
    buildPrice: json['buildPrice'] as int,
    buildTime: json['buildTime'] as int,
    skipBuildTimePrice: json['skipBuildTimePrice'] as int,
    buildQuantity: json['buildQuantity'] as int,
    consumeOnBuild: json['consumeOnBuild'] as bool,
    components: (json['components'] as List)
        ?.map((e) => e == null
            ? null
            : ComponentModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    health: json['health'] as int,
    shield: json['shield'] as int,
    armor: json['armor'] as int,
    power: json['power'] as int,
    abilities: (json['abilities'] as List)
        ?.map((e) =>
            e == null ? null : AbilityModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    sprintSpeed: (json['sprintSpeed'] as num)?.toDouble(),
    patchlogs: (json['patchlogs'] as List)
        ?.map((e) => e == null
            ? null
            : PatchlogModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    wikiaThumbnail: json['wikiaThumbnail'] as String,
    wikiaUrl: json['wikiaUrl'] as String,
  );
}

Map<String, dynamic> _$HeavyPowerSuitModelToJson(
        HeavyPowerSuitModel instance) =>
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
      'health': instance.health,
      'shield': instance.shield,
      'armor': instance.armor,
      'power': instance.power,
      'polarities': instance.polarities,
      'sprintSpeed': instance.sprintSpeed,
      'components': instance.components,
      'abilities': instance.abilities,
      'patchlogs': instance.patchlogs,
    };

CompanionModel _$CompanionModelFromJson(Map<String, dynamic> json) {
  return CompanionModel(
    uniqueName: json['uniqueName'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    type: json['type'] as String,
    imageName: json['imageName'] as String,
    category: json['category'] as String,
    productCategory: json['productCategory'] as String,
    tradable: json['tradable'] as bool,
    masteryReq: json['masteryReq'] as int,
    buildPrice: json['buildPrice'] as int,
    buildTime: json['buildTime'] as int,
    skipBuildTimePrice: json['skipBuildTimePrice'] as int,
    buildQuantity: json['buildQuantity'] as int,
    consumeOnBuild: json['consumeOnBuild'] as bool,
    components: (json['components'] as List)
        ?.map((e) => e == null
            ? null
            : ComponentModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    health: json['health'] as int,
    shield: json['shield'] as int,
    armor: json['armor'] as int,
    power: json['power'] as int,
    polarities: (json['polarities'] as List)?.map((e) => e as String)?.toList(),
    patchlogs: (json['patchlogs'] as List)
        ?.map((e) => e == null
            ? null
            : PatchlogModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    wikiaThumbnail: json['wikiaThumbnail'] as String,
    wikiaUrl: json['wikiaUrl'] as String,
  );
}

Map<String, dynamic> _$CompanionModelToJson(CompanionModel instance) =>
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
      'health': instance.health,
      'shield': instance.shield,
      'armor': instance.armor,
      'power': instance.power,
      'polarities': instance.polarities,
      'components': instance.components,
      'patchlogs': instance.patchlogs,
    };
