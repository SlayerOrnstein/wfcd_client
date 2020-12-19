// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapon_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectileWeaponModel _$ProjectileWeaponModelFromJson(
    Map<String, dynamic> json) {
  return ProjectileWeaponModel(
    uniqueName: json['uniqueName'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    type: json['type'] as String,
    imageName: json['imageName'] as String,
    category: json['category'] as String,
    productCategory: json['productCategory'] as String,
    tradable: json['tradable'] as bool,
    wikiaThumbnail: json['wikiaThumbnail'] as String,
    wikiaUrl: json['wikiaUrl'] as String,
    damagePerShot: (json['damagePerShot'] as List)
        ?.map((e) => (e as num)?.toDouble())
        ?.toList(),
    magazineSize: json['magazineSize'] as int,
    reloadTime: (json['reloadTime'] as num)?.toDouble(),
    trigger: json['trigger'] as String,
    accuracy: (json['accuracy'] as num)?.toDouble(),
    criticalChance: (json['criticalChance'] as num)?.toDouble(),
    criticalMultiplier: (json['criticalMultiplier'] as num)?.toDouble(),
    procChance: (json['procChance'] as num)?.toDouble(),
    fireRate: (json['fireRate'] as num)?.toDouble(),
    slot: json['slot'] as int,
    ammo: json['ammo'] as int,
    flight: json['flight'] as int,
    noise: json['noise'] as String,
    sentinel: json['sentinel'] as bool,
    masteryReq: json['masteryReq'] as int,
    omegaAttenuation: (json['omegaAttenuation'] as num)?.toDouble(),
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
    damageTypes: (json['damageTypes'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, (e as num)?.toDouble()),
    ),
    polarities: (json['polarities'] as List)?.map((e) => e as String)?.toList(),
    marketCost: json['marketCost'] as int,
    vaulted: json['vaulted'] as bool,
    disposition: json['disposition'] as int,
    multishot: (json['multishot'] as num)?.toDouble(),
    patchlogs: (json['patchlogs'] as List)
        ?.map((e) => e == null
            ? null
            : PatchlogModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
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
      'damagePerShot': instance.damagePerShot,
      'damageTypes': instance.damageTypes,
      'polarities': instance.polarities,
      'marketCost': instance.marketCost,
      'disposition': instance.disposition,
      'sentinel': instance.sentinel,
      'vaulted': instance.vaulted,
      'ammo': instance.ammo,
      'magazineSize': instance.magazineSize,
      'reloadTime': instance.reloadTime,
      'trigger': instance.trigger,
      'accuracy': instance.accuracy,
      'noise': instance.noise,
      'multishot': instance.multishot,
      'flight': instance.flight,
      'procChance': instance.procChance,
      'components': instance.components,
      'patchlogs': instance.patchlogs,
    };

MeleeWeaponModel _$MeleeWeaponModelFromJson(Map<String, dynamic> json) {
  return MeleeWeaponModel(
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
    slot: json['slot'] as int,
    components: (json['components'] as List)
        ?.map((e) => e == null
            ? null
            : ComponentModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    criticalChance: (json['criticalChance'] as num)?.toDouble(),
    criticalMultiplier: (json['criticalMultiplier'] as num)?.toDouble(),
    procChance: (json['procChance'] as num)?.toDouble(),
    fireRate: (json['fireRate'] as num)?.toDouble(),
    omegaAttenuation: (json['omegaAttenuation'] as num)?.toDouble(),
    damage: json['damage'] as String,
    totalDamage: (json['totalDamage'] as num)?.toDouble(),
    damagePerShot: (json['damagePerShot'] as List)
        ?.map((e) => (e as num)?.toDouble())
        ?.toList(),
    damageTypes: (json['damageTypes'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, (e as num)?.toDouble()),
    ),
    polarities: (json['polarities'] as List)?.map((e) => e as String)?.toList(),
    marketCost: json['marketCost'] as int,
    disposition: json['disposition'] as int,
    sentinel: json['sentinel'] as bool,
    releaseDate: json['releaseDate'] as String,
    vaulted: json['vaulted'] as bool,
    estimatedVaultDate: json['estimatedVaultDate'] as String,
    blockingAngle: json['blockingAngle'] as int,
    comboDuration: json['comboDuration'] as int,
    followThrough: (json['followThrough'] as num)?.toDouble(),
    range: (json['range'] as num)?.toDouble(),
    slamAttack: json['slamAttack'] as int,
    slamRadialDamage: json['slamRadialDamage'] as int,
    slamRadius: json['slamRadius'] as int,
    slideAttack: json['slideAttack'] as int,
    heavyAttackDamage: json['heavyAttackDamage'] as int,
    heavySlamAttack: json['heavySlamAttack'] as int,
    heavySlamRadius: json['heavySlamRadius'] as int,
    heavySlamRadialDamage: json['heavySlamRadialDamage'] as int,
    windUp: (json['windUp'] as num)?.toDouble(),
    stancePolarity: json['stancePolarity'] as String,
    patchlogs: (json['patchlogs'] as List)
        ?.map((e) => e == null
            ? null
            : PatchlogModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    wikiaThumbnail: json['wikiaThumbnail'] as String,
    wikiaUrl: json['wikiaUrl'] as String,
  );
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
      'components': instance.components,
      'patchlogs': instance.patchlogs,
    };
