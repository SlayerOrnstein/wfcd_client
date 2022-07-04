// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'power_suit_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AbilityModel _$AbilityModelFromJson(Map json) => $checkedCreate(
      'AbilityModel',
      json,
      ($checkedConvert) {
        final val = AbilityModel(
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$AbilityModelToJson(AbilityModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
    };

WarframeModel _$WarframeModelFromJson(Map json) => $checkedCreate(
      'WarframeModel',
      json,
      ($checkedConvert) {
        final val = WarframeModel(
          uniqueName: $checkedConvert('uniqueName', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          aura: $checkedConvert('aura', (v) => v as String?),
          health: $checkedConvert('health', (v) => v as int),
          shield: $checkedConvert('shield', (v) => v as int),
          armor: $checkedConvert('armor', (v) => v as int),
          power: $checkedConvert('power', (v) => v as int),
          masteryReq: $checkedConvert('masteryReq', (v) => v as int),
          sprintSpeed:
              $checkedConvert('sprintSpeed', (v) => (v as num).toDouble()),
          passiveDescription:
              $checkedConvert('passiveDescription', (v) => v as String),
          abilities: $checkedConvert(
              'abilities',
              (v) => (v as List<dynamic>)
                  .map((e) => AbilityModel.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
          buildPrice: $checkedConvert('buildPrice', (v) => v as int?),
          buildTime: $checkedConvert('buildTime', (v) => v as int?),
          skipBuildTimePrice:
              $checkedConvert('skipBuildTimePrice', (v) => v as int?),
          buildQuantity: $checkedConvert('buildQuantity', (v) => v as int?),
          consumeOnBuild: $checkedConvert('consumeOnBuild', (v) => v as bool?),
          components: $checkedConvert(
              'components',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => ComponentModel.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
          type: $checkedConvert('type', (v) => v as String),
          imageName: $checkedConvert('imageName', (v) => v as String),
          category: $checkedConvert('category', (v) => v as String),
          productCategory:
              $checkedConvert('productCategory', (v) => v as String),
          tradable: $checkedConvert('tradable', (v) => v as bool?),
          stamina: $checkedConvert('stamina', (v) => v as int),
          patchlogs: $checkedConvert(
              'patchlogs',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => PatchlogModel.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
          wikiaThumbnail:
              $checkedConvert('wikiaThumbnail', (v) => v as String?),
          wikiaUrl: $checkedConvert('wikiaUrl', (v) => v as String?),
          vaultDate: $checkedConvert('vaultDate', (v) => v as String?),
          vaulted: $checkedConvert('vaulted', (v) => v as bool?),
          sex: $checkedConvert('sex', (v) => v as String),
          introduced: $checkedConvert(
              'introduced',
              (v) => IntroducedModel.fromJson(
                  Map<String, dynamic>.from(v as Map))),
          polarities: $checkedConvert('polarities',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          color: $checkedConvert('color', (v) => v as int),
        );
        return val;
      },
    );

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
      'vaultDate': instance.vaultDate,
      'consumeOnBuild': instance.consumeOnBuild,
      'vaulted': instance.vaulted,
      'health': instance.health,
      'shield': instance.shield,
      'armor': instance.armor,
      'power': instance.power,
      'polarities': instance.polarities,
      'sprintSpeed': instance.sprintSpeed,
      'aura': instance.aura,
      'stamina': instance.stamina,
      'passiveDescription': instance.passiveDescription,
      'sex': instance.sex,
      'color': instance.color,
      'components': instance.components?.map((e) => e.toJson()).toList(),
      'abilities': instance.abilities.map((e) => e.toJson()).toList(),
      'patchlogs': instance.patchlogs?.map((e) => e.toJson()).toList(),
      'introduced': instance.introduced.toJson(),
    };

IntroducedModel _$IntroducedModelFromJson(Map json) => $checkedCreate(
      'IntroducedModel',
      json,
      ($checkedConvert) {
        final val = IntroducedModel(
          name: $checkedConvert('name', (v) => v as String),
          url: $checkedConvert('url', (v) => v as String),
          date: $checkedConvert('date', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$IntroducedModelToJson(IntroducedModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'date': instance.date,
    };

HeavyPowerSuitModel _$HeavyPowerSuitModelFromJson(Map json) => $checkedCreate(
      'HeavyPowerSuitModel',
      json,
      ($checkedConvert) {
        final val = HeavyPowerSuitModel(
          uniqueName: $checkedConvert('uniqueName', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
          imageName: $checkedConvert('imageName', (v) => v as String),
          category: $checkedConvert('category', (v) => v as String),
          productCategory:
              $checkedConvert('productCategory', (v) => v as String),
          polarities: $checkedConvert('polarities',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          tradable: $checkedConvert('tradable', (v) => v as bool?),
          masteryReq: $checkedConvert('masteryReq', (v) => v as int),
          buildPrice: $checkedConvert('buildPrice', (v) => v as int),
          buildTime: $checkedConvert('buildTime', (v) => v as int),
          skipBuildTimePrice:
              $checkedConvert('skipBuildTimePrice', (v) => v as int),
          buildQuantity: $checkedConvert('buildQuantity', (v) => v as int),
          consumeOnBuild: $checkedConvert('consumeOnBuild', (v) => v as bool),
          components: $checkedConvert(
              'components',
              (v) => (v as List<dynamic>)
                  .map((e) => ComponentModel.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
          health: $checkedConvert('health', (v) => v as int),
          shield: $checkedConvert('shield', (v) => v as int),
          armor: $checkedConvert('armor', (v) => v as int),
          power: $checkedConvert('power', (v) => v as int),
          abilities: $checkedConvert(
              'abilities',
              (v) => (v as List<dynamic>)
                  .map((e) => AbilityModel.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
          sprintSpeed:
              $checkedConvert('sprintSpeed', (v) => (v as num).toDouble()),
          patchlogs: $checkedConvert(
              'patchlogs',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => PatchlogModel.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
          wikiaThumbnail:
              $checkedConvert('wikiaThumbnail', (v) => v as String?),
          wikiaUrl: $checkedConvert('wikiaUrl', (v) => v as String?),
          vaultDate: $checkedConvert('vaultDate', (v) => v as String?),
          vaulted: $checkedConvert('vaulted', (v) => v as bool?),
        );
        return val;
      },
    );

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
      'vaultDate': instance.vaultDate,
      'consumeOnBuild': instance.consumeOnBuild,
      'vaulted': instance.vaulted,
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

CompanionModel _$CompanionModelFromJson(Map json) => $checkedCreate(
      'CompanionModel',
      json,
      ($checkedConvert) {
        final val = CompanionModel(
          uniqueName: $checkedConvert('uniqueName', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          type: $checkedConvert('type', (v) => v as String),
          imageName: $checkedConvert('imageName', (v) => v as String),
          category: $checkedConvert('category', (v) => v as String),
          productCategory:
              $checkedConvert('productCategory', (v) => v as String),
          tradable: $checkedConvert('tradable', (v) => v as bool?),
          masteryReq: $checkedConvert('masteryReq', (v) => v as int?),
          buildPrice: $checkedConvert('buildPrice', (v) => v as int?),
          buildTime: $checkedConvert('buildTime', (v) => v as int?),
          skipBuildTimePrice:
              $checkedConvert('skipBuildTimePrice', (v) => v as int?),
          buildQuantity: $checkedConvert('buildQuantity', (v) => v as int?),
          consumeOnBuild: $checkedConvert('consumeOnBuild', (v) => v as bool?),
          components: $checkedConvert(
              'components',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => ComponentModel.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
          health: $checkedConvert('health', (v) => v as int),
          shield: $checkedConvert('shield', (v) => v as int),
          armor: $checkedConvert('armor', (v) => v as int),
          power: $checkedConvert('power', (v) => v as int),
          polarities: $checkedConvert('polarities',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          patchlogs: $checkedConvert(
              'patchlogs',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => PatchlogModel.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
          wikiaThumbnail:
              $checkedConvert('wikiaThumbnail', (v) => v as String?),
          wikiaUrl: $checkedConvert('wikiaUrl', (v) => v as String?),
          vaultDate: $checkedConvert('vaultDate', (v) => v as String?),
          vaulted: $checkedConvert('vaulted', (v) => v as bool?),
        );
        return val;
      },
    );

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
      'vaultDate': instance.vaultDate,
      'consumeOnBuild': instance.consumeOnBuild,
      'vaulted': instance.vaulted,
      'health': instance.health,
      'shield': instance.shield,
      'armor': instance.armor,
      'power': instance.power,
      'polarities': instance.polarities,
      'components': instance.components?.map((e) => e.toJson()).toList(),
      'patchlogs': instance.patchlogs?.map((e) => e.toJson()).toList(),
    };
