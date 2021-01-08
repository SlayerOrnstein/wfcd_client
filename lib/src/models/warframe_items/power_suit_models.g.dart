// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'power_suit_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AbilityModel _$AbilityModelFromJson(Map json) {
  return $checkedNew('AbilityModel', json, () {
    final val = AbilityModel(
      name: $checkedConvert(json, 'name', (v) => v as String),
      description: $checkedConvert(json, 'description', (v) => v as String),
    );
    return val;
  });
}

Map<String, dynamic> _$AbilityModelToJson(AbilityModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
    };

WarframeModel _$WarframeModelFromJson(Map json) {
  return $checkedNew('WarframeModel', json, () {
    final val = WarframeModel(
      uniqueName: $checkedConvert(json, 'uniqueName', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
      description: $checkedConvert(json, 'description', (v) => v as String),
      aura: $checkedConvert(json, 'aura', (v) => v as String),
      health: $checkedConvert(json, 'health', (v) => v as int),
      shield: $checkedConvert(json, 'shield', (v) => v as int),
      armor: $checkedConvert(json, 'armor', (v) => v as int),
      power: $checkedConvert(json, 'power', (v) => v as int),
      masteryReq: $checkedConvert(json, 'masteryReq', (v) => v as int),
      sprintSpeed:
          $checkedConvert(json, 'sprintSpeed', (v) => (v as num).toDouble()),
      passiveDescription:
          $checkedConvert(json, 'passiveDescription', (v) => v as String),
      abilities: $checkedConvert(
          json,
          'abilities',
          (v) => (v as List<dynamic>)
              .map((e) =>
                  AbilityModel.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList()),
      buildPrice: $checkedConvert(json, 'buildPrice', (v) => v as int),
      buildTime: $checkedConvert(json, 'buildTime', (v) => v as int),
      skipBuildTimePrice:
          $checkedConvert(json, 'skipBuildTimePrice', (v) => v as int),
      buildQuantity: $checkedConvert(json, 'buildQuantity', (v) => v as int),
      consumeOnBuild: $checkedConvert(json, 'consumeOnBuild', (v) => v as bool),
      components: $checkedConvert(
          json,
          'components',
          (v) => (v as List<dynamic>)
              .map((e) =>
                  ComponentModel.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList()),
      type: $checkedConvert(json, 'type', (v) => v as String),
      imageName: $checkedConvert(json, 'imageName', (v) => v as String),
      category: $checkedConvert(json, 'category', (v) => v as String),
      productCategory:
          $checkedConvert(json, 'productCategory', (v) => v as String),
      tradable: $checkedConvert(json, 'tradable', (v) => v as bool),
      stamina: $checkedConvert(json, 'stamina', (v) => v as int),
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
      sex: $checkedConvert(json, 'sex', (v) => v as String),
      introduced: $checkedConvert(json, 'introduced', (v) => v as String),
      polarities: $checkedConvert(json, 'polarities',
          (v) => (v as List<dynamic>).map((e) => e as String).toList()),
      color: $checkedConvert(json, 'color', (v) => v as int),
    );
    return val;
  });
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
      'stamina': instance.stamina,
      'passiveDescription': instance.passiveDescription,
      'introduced': instance.introduced,
      'sex': instance.sex,
      'color': instance.color,
      'components': instance.components.map((e) => e.toJson()).toList(),
      'abilities': instance.abilities.map((e) => e.toJson()).toList(),
      'patchlogs': instance.patchlogs?.map((e) => e.toJson()).toList(),
    };

HeavyPowerSuitModel _$HeavyPowerSuitModelFromJson(Map json) {
  return $checkedNew('HeavyPowerSuitModel', json, () {
    final val = HeavyPowerSuitModel(
      uniqueName: $checkedConvert(json, 'uniqueName', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
      description: $checkedConvert(json, 'description', (v) => v as String),
      type: $checkedConvert(json, 'type', (v) => v as String),
      imageName: $checkedConvert(json, 'imageName', (v) => v as String),
      category: $checkedConvert(json, 'category', (v) => v as String),
      productCategory:
          $checkedConvert(json, 'productCategory', (v) => v as String),
      polarities: $checkedConvert(json, 'polarities',
          (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
      tradable: $checkedConvert(json, 'tradable', (v) => v as bool),
      masteryReq: $checkedConvert(json, 'masteryReq', (v) => v as int),
      buildPrice: $checkedConvert(json, 'buildPrice', (v) => v as int),
      buildTime: $checkedConvert(json, 'buildTime', (v) => v as int),
      skipBuildTimePrice:
          $checkedConvert(json, 'skipBuildTimePrice', (v) => v as int),
      buildQuantity: $checkedConvert(json, 'buildQuantity', (v) => v as int),
      consumeOnBuild: $checkedConvert(json, 'consumeOnBuild', (v) => v as bool),
      components: $checkedConvert(
          json,
          'components',
          (v) => (v as List<dynamic>)
              .map((e) =>
                  ComponentModel.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList()),
      health: $checkedConvert(json, 'health', (v) => v as int),
      shield: $checkedConvert(json, 'shield', (v) => v as int),
      armor: $checkedConvert(json, 'armor', (v) => v as int),
      power: $checkedConvert(json, 'power', (v) => v as int),
      abilities: $checkedConvert(
          json,
          'abilities',
          (v) => (v as List<dynamic>)
              .map((e) =>
                  AbilityModel.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList()),
      sprintSpeed:
          $checkedConvert(json, 'sprintSpeed', (v) => (v as num).toDouble()),
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
      'components': instance.components.map((e) => e.toJson()).toList(),
      'abilities': instance.abilities.map((e) => e.toJson()).toList(),
      'patchlogs': instance.patchlogs?.map((e) => e.toJson()).toList(),
    };

CompanionModel _$CompanionModelFromJson(Map json) {
  return $checkedNew('CompanionModel', json, () {
    final val = CompanionModel(
      uniqueName: $checkedConvert(json, 'uniqueName', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
      description: $checkedConvert(json, 'description', (v) => v as String),
      type: $checkedConvert(json, 'type', (v) => v as String),
      imageName: $checkedConvert(json, 'imageName', (v) => v as String),
      category: $checkedConvert(json, 'category', (v) => v as String),
      productCategory:
          $checkedConvert(json, 'productCategory', (v) => v as String),
      tradable: $checkedConvert(json, 'tradable', (v) => v as bool),
      masteryReq: $checkedConvert(json, 'masteryReq', (v) => v as int),
      buildPrice: $checkedConvert(json, 'buildPrice', (v) => v as int),
      buildTime: $checkedConvert(json, 'buildTime', (v) => v as int),
      skipBuildTimePrice:
          $checkedConvert(json, 'skipBuildTimePrice', (v) => v as int),
      buildQuantity: $checkedConvert(json, 'buildQuantity', (v) => v as int),
      consumeOnBuild: $checkedConvert(json, 'consumeOnBuild', (v) => v as bool),
      components: $checkedConvert(
          json,
          'components',
          (v) => (v as List<dynamic>)
              .map((e) =>
                  ComponentModel.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList()),
      health: $checkedConvert(json, 'health', (v) => v as int),
      shield: $checkedConvert(json, 'shield', (v) => v as int),
      armor: $checkedConvert(json, 'armor', (v) => v as int),
      power: $checkedConvert(json, 'power', (v) => v as int),
      polarities: $checkedConvert(json, 'polarities',
          (v) => (v as List<dynamic>).map((e) => e as String).toList()),
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
      'components': instance.components.map((e) => e.toJson()).toList(),
      'patchlogs': instance.patchlogs?.map((e) => e.toJson()).toList(),
    };
