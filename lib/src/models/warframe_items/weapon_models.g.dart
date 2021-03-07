// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapon_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectileWeaponModel _$ProjectileWeaponModelFromJson(Map json) {
  return $checkedNew('ProjectileWeaponModel', json, () {
    final val = ProjectileWeaponModel(
      uniqueName: $checkedConvert(json, 'uniqueName', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
      description: $checkedConvert(json, 'description', (v) => v as String),
      type: $checkedConvert(json, 'type', (v) => v as String),
      imageName: $checkedConvert(json, 'imageName', (v) => v as String),
      category: $checkedConvert(json, 'category', (v) => v as String),
      productCategory:
          $checkedConvert(json, 'productCategory', (v) => v as String),
      tradable: $checkedConvert(json, 'tradable', (v) => v as bool),
      damagePerShot: $checkedConvert(
          json,
          'damagePerShot',
          (v) =>
              (v as List<dynamic>).map((e) => (e as num).toDouble()).toList()),
      magazineSize: $checkedConvert(json, 'magazineSize', (v) => v as int),
      reloadTime:
          $checkedConvert(json, 'reloadTime', (v) => (v as num).toDouble()),
      trigger: $checkedConvert(json, 'trigger', (v) => v as String),
      accuracy: $checkedConvert(json, 'accuracy', (v) => (v as num).toDouble()),
      criticalChance:
          $checkedConvert(json, 'criticalChance', (v) => (v as num).toDouble()),
      criticalMultiplier: $checkedConvert(
          json, 'criticalMultiplier', (v) => (v as num).toDouble()),
      procChance:
          $checkedConvert(json, 'procChance', (v) => (v as num).toDouble()),
      fireRate: $checkedConvert(json, 'fireRate', (v) => (v as num).toDouble()),
      slot: $checkedConvert(json, 'slot', (v) => v as int),
      ammo: $checkedConvert(json, 'ammo', (v) => v as int?),
      flight: $checkedConvert(json, 'flight', (v) => v),
      noise: $checkedConvert(json, 'noise', (v) => v as String),
      sentinel: $checkedConvert(json, 'sentinel', (v) => v as bool?),
      masteryReq: $checkedConvert(json, 'masteryReq', (v) => v as int),
      omegaAttenuation: $checkedConvert(
          json, 'omegaAttenuation', (v) => (v as num).toDouble()),
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
      damageTypes: $checkedConvert(
          json, 'damageTypes', (v) => Map<String, num>.from(v as Map)),
      polarities: $checkedConvert(json, 'polarities',
          (v) => (v as List<dynamic>).map((e) => e as String).toList()),
      marketCost: $checkedConvert(json, 'marketCost', (v) => v as int?),
      vaulted: $checkedConvert(json, 'vaulted', (v) => v as bool?),
      disposition: $checkedConvert(json, 'disposition', (v) => v as int),
      multishot:
          $checkedConvert(json, 'multishot', (v) => (v as num?)?.toDouble()),
      damage: $checkedConvert(json, 'damage', (v) => v as String),
      totalDamage:
          $checkedConvert(json, 'totalDamage', (v) => (v as num).toDouble()),
      estimatedVaultDate:
          $checkedConvert(json, 'estimatedVaultDate', (v) => v as String?),
      releaseDate: $checkedConvert(json, 'releaseDate', (v) => v as String?),
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

Map<String, dynamic> _$ProjectileWeaponModelToJson(
        ProjectileWeaponModel instance) =>
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
      'slot': instance.slot,
      'criticalChance': instance.criticalChance,
      'criticalMultiplier': instance.criticalMultiplier,
      'fireRate': instance.fireRate,
      'omegaAttenuation': instance.omegaAttenuation,
      'damage': instance.damage,
      'totalDamage': instance.totalDamage,
      'damagePerShot': instance.damagePerShot,
      'damageTypes': instance.damageTypes,
      'polarities': instance.polarities,
      'marketCost': instance.marketCost,
      'disposition': instance.disposition,
      'sentinel': instance.sentinel,
      'vaulted': instance.vaulted,
      'releaseDate': instance.releaseDate,
      'estimatedVaultDate': instance.estimatedVaultDate,
      'ammo': instance.ammo,
      'magazineSize': instance.magazineSize,
      'reloadTime': instance.reloadTime,
      'trigger': instance.trigger,
      'accuracy': instance.accuracy,
      'noise': instance.noise,
      'multishot': instance.multishot,
      'flight': instance.flight,
      'procChance': instance.procChance,
      'components': instance.components.map((e) => e.toJson()).toList(),
      'patchlogs': instance.patchlogs?.map((e) => e.toJson()).toList(),
    };

MeleeWeaponModel _$MeleeWeaponModelFromJson(Map json) {
  return $checkedNew('MeleeWeaponModel', json, () {
    final val = MeleeWeaponModel(
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
      slot: $checkedConvert(json, 'slot', (v) => v as int),
      components: $checkedConvert(
          json,
          'components',
          (v) => (v as List<dynamic>)
              .map((e) =>
                  ComponentModel.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList()),
      criticalChance:
          $checkedConvert(json, 'criticalChance', (v) => (v as num).toDouble()),
      criticalMultiplier: $checkedConvert(
          json, 'criticalMultiplier', (v) => (v as num).toDouble()),
      procChance:
          $checkedConvert(json, 'procChance', (v) => (v as num).toDouble()),
      fireRate: $checkedConvert(json, 'fireRate', (v) => (v as num).toDouble()),
      omegaAttenuation: $checkedConvert(
          json, 'omegaAttenuation', (v) => (v as num).toDouble()),
      damage: $checkedConvert(json, 'damage', (v) => v as String),
      totalDamage:
          $checkedConvert(json, 'totalDamage', (v) => (v as num).toDouble()),
      damagePerShot: $checkedConvert(
          json,
          'damagePerShot',
          (v) =>
              (v as List<dynamic>).map((e) => (e as num).toDouble()).toList()),
      damageTypes: $checkedConvert(
          json, 'damageTypes', (v) => Map<String, num>.from(v as Map)),
      polarities: $checkedConvert(json, 'polarities',
          (v) => (v as List<dynamic>).map((e) => e as String).toList()),
      marketCost: $checkedConvert(json, 'marketCost', (v) => v as int?),
      disposition: $checkedConvert(json, 'disposition', (v) => v as int),
      sentinel: $checkedConvert(json, 'sentinel', (v) => v as bool?),
      releaseDate: $checkedConvert(json, 'releaseDate', (v) => v as String?),
      vaulted: $checkedConvert(json, 'vaulted', (v) => v as bool?),
      estimatedVaultDate:
          $checkedConvert(json, 'estimatedVaultDate', (v) => v as String?),
      blockingAngle: $checkedConvert(json, 'blockingAngle', (v) => v as int),
      comboDuration: $checkedConvert(json, 'comboDuration', (v) => v as int),
      followThrough:
          $checkedConvert(json, 'followThrough', (v) => (v as num).toDouble()),
      range: $checkedConvert(json, 'range', (v) => (v as num).toDouble()),
      slamAttack: $checkedConvert(json, 'slamAttack', (v) => v as int),
      slamRadialDamage:
          $checkedConvert(json, 'slamRadialDamage', (v) => v as int),
      slamRadius: $checkedConvert(json, 'slamRadius', (v) => v as int),
      slideAttack: $checkedConvert(json, 'slideAttack', (v) => v as int),
      heavyAttackDamage:
          $checkedConvert(json, 'heavyAttackDamage', (v) => v as int),
      heavySlamAttack:
          $checkedConvert(json, 'heavySlamAttack', (v) => v as int),
      heavySlamRadius:
          $checkedConvert(json, 'heavySlamRadius', (v) => v as int?),
      heavySlamRadialDamage:
          $checkedConvert(json, 'heavySlamRadialDamage', (v) => v as int?),
      windUp: $checkedConvert(json, 'windUp', (v) => (v as num?)?.toDouble()),
      stancePolarity:
          $checkedConvert(json, 'stancePolarity', (v) => v as String?),
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

Map<String, dynamic> _$MeleeWeaponModelToJson(MeleeWeaponModel instance) =>
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
      'slot': instance.slot,
      'criticalChance': instance.criticalChance,
      'criticalMultiplier': instance.criticalMultiplier,
      'fireRate': instance.fireRate,
      'omegaAttenuation': instance.omegaAttenuation,
      'damage': instance.damage,
      'totalDamage': instance.totalDamage,
      'damagePerShot': instance.damagePerShot,
      'damageTypes': instance.damageTypes,
      'polarities': instance.polarities,
      'marketCost': instance.marketCost,
      'disposition': instance.disposition,
      'sentinel': instance.sentinel,
      'vaulted': instance.vaulted,
      'releaseDate': instance.releaseDate,
      'estimatedVaultDate': instance.estimatedVaultDate,
      'blockingAngle': instance.blockingAngle,
      'comboDuration': instance.comboDuration,
      'followThrough': instance.followThrough,
      'range': instance.range,
      'slamAttack': instance.slamAttack,
      'slamRadialDamage': instance.slamRadialDamage,
      'slamRadius': instance.slamRadius,
      'slideAttack': instance.slideAttack,
      'heavyAttackDamage': instance.heavyAttackDamage,
      'heavySlamAttack': instance.heavySlamAttack,
      'heavySlamRadius': instance.heavySlamRadius,
      'heavySlamRadialDamage': instance.heavySlamRadialDamage,
      'windUp': instance.windUp,
      'stancePolarity': instance.stancePolarity,
      'procChance': instance.procChance,
      'components': instance.components.map((e) => e.toJson()).toList(),
      'patchlogs': instance.patchlogs?.map((e) => e.toJson()).toList(),
    };
