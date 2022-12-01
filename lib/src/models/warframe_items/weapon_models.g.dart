// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapon_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectileWeaponModel _$ProjectileWeaponModelFromJson(Map json) =>
    $checkedCreate(
      'ProjectileWeaponModel',
      json,
      ($checkedConvert) {
        final val = ProjectileWeaponModel(
          uniqueName: $checkedConvert('uniqueName', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
          imageName: $checkedConvert('imageName', (v) => v as String),
          category: $checkedConvert('category', (v) => v as String),
          productCategory:
              $checkedConvert('productCategory', (v) => v as String),
          tradable: $checkedConvert('tradable', (v) => v as bool),
          damagePerShot: $checkedConvert(
              'damagePerShot',
              (v) => (v as List<dynamic>)
                  .map((e) => (e as num).toDouble())
                  .toList()),
          magazineSize: $checkedConvert('magazineSize', (v) => v as int?),
          reloadTime:
              $checkedConvert('reloadTime', (v) => (v as num?)?.toDouble()),
          trigger: $checkedConvert('trigger', (v) => v as String?),
          accuracy: $checkedConvert('accuracy', (v) => (v as num?)?.toDouble()),
          criticalChance:
              $checkedConvert('criticalChance', (v) => (v as num).toDouble()),
          criticalMultiplier: $checkedConvert(
              'criticalMultiplier', (v) => (v as num).toDouble()),
          procChance:
              $checkedConvert('procChance', (v) => (v as num).toDouble()),
          fireRate: $checkedConvert('fireRate', (v) => (v as num).toDouble()),
          slot: $checkedConvert('slot', (v) => v as int),
          ammo: $checkedConvert('ammo', (v) => v),
          flight: $checkedConvert('flight', (v) => v),
          noise: $checkedConvert('noise', (v) => v as String?),
          sentinel: $checkedConvert('sentinel', (v) => v as bool?),
          masteryReq: $checkedConvert('masteryReq', (v) => v as int),
          omegaAttenuation:
              $checkedConvert('omegaAttenuation', (v) => (v as num).toDouble()),
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
          polarities: $checkedConvert('polarities',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          marketCost: $checkedConvert('marketCost', (v) => v as int?),
          vaulted: $checkedConvert('vaulted', (v) => v as bool?),
          disposition: $checkedConvert('disposition', (v) => v as int?),
          multishot:
              $checkedConvert('multishot', (v) => (v as num?)?.toDouble()),
          damage: $checkedConvert(
              'damage',
              (v) => v == null
                  ? null
                  : DamageModel.fromJson(Map<String, dynamic>.from(v as Map))),
          totalDamage:
              $checkedConvert('totalDamage', (v) => (v as num).toDouble()),
          estimatedVaultDate:
              $checkedConvert('estimatedVaultDate', (v) => v as String?),
          releaseDate: $checkedConvert('releaseDate', (v) => v as String?),
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
      'vaulted': instance.vaulted,
      'slot': instance.slot,
      'criticalChance': instance.criticalChance,
      'criticalMultiplier': instance.criticalMultiplier,
      'fireRate': instance.fireRate,
      'omegaAttenuation': instance.omegaAttenuation,
      'totalDamage': instance.totalDamage,
      'damagePerShot': instance.damagePerShot,
      'polarities': instance.polarities,
      'marketCost': instance.marketCost,
      'disposition': instance.disposition,
      'sentinel': instance.sentinel,
      'releaseDate': instance.releaseDate,
      'estimatedVaultDate': instance.estimatedVaultDate,
      'magazineSize': instance.magazineSize,
      'reloadTime': instance.reloadTime,
      'trigger': instance.trigger,
      'accuracy': instance.accuracy,
      'noise': instance.noise,
      'multishot': instance.multishot,
      'ammo': instance.ammo,
      'flight': instance.flight,
      'procChance': instance.procChance,
      'components': instance.components?.map((e) => e.toJson()).toList(),
      'patchlogs': instance.patchlogs?.map((e) => e.toJson()).toList(),
      'damage': instance.damage?.toJson(),
    };

MeleeWeaponModel _$MeleeWeaponModelFromJson(Map json) => $checkedCreate(
      'MeleeWeaponModel',
      json,
      ($checkedConvert) {
        final val = MeleeWeaponModel(
          uniqueName: $checkedConvert('uniqueName', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
          imageName: $checkedConvert('imageName', (v) => v as String),
          category: $checkedConvert('category', (v) => v as String),
          productCategory:
              $checkedConvert('productCategory', (v) => v as String),
          tradable: $checkedConvert('tradable', (v) => v as bool?),
          masteryReq: $checkedConvert('masteryReq', (v) => v as int),
          buildPrice: $checkedConvert('buildPrice', (v) => v as int?),
          buildTime: $checkedConvert('buildTime', (v) => v as int?),
          skipBuildTimePrice:
              $checkedConvert('skipBuildTimePrice', (v) => v as int?),
          buildQuantity: $checkedConvert('buildQuantity', (v) => v as int?),
          consumeOnBuild: $checkedConvert('consumeOnBuild', (v) => v as bool?),
          slot: $checkedConvert('slot', (v) => v as int),
          components: $checkedConvert(
              'components',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => ComponentModel.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
          criticalChance:
              $checkedConvert('criticalChance', (v) => (v as num).toDouble()),
          criticalMultiplier: $checkedConvert(
              'criticalMultiplier', (v) => (v as num).toDouble()),
          procChance:
              $checkedConvert('procChance', (v) => (v as num).toDouble()),
          fireRate: $checkedConvert('fireRate', (v) => (v as num).toDouble()),
          omegaAttenuation:
              $checkedConvert('omegaAttenuation', (v) => (v as num).toDouble()),
          damage: $checkedConvert(
              'damage',
              (v) => v == null
                  ? null
                  : DamageModel.fromJson(Map<String, dynamic>.from(v as Map))),
          totalDamage:
              $checkedConvert('totalDamage', (v) => (v as num).toDouble()),
          damagePerShot: $checkedConvert(
              'damagePerShot',
              (v) => (v as List<dynamic>)
                  .map((e) => (e as num).toDouble())
                  .toList()),
          polarities: $checkedConvert('polarities',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          marketCost: $checkedConvert('marketCost', (v) => v),
          disposition: $checkedConvert('disposition', (v) => v as int?),
          sentinel: $checkedConvert('sentinel', (v) => v as bool?),
          releaseDate: $checkedConvert('releaseDate', (v) => v as String?),
          vaulted: $checkedConvert('vaulted', (v) => v as bool?),
          estimatedVaultDate:
              $checkedConvert('estimatedVaultDate', (v) => v as String?),
          blockingAngle: $checkedConvert('blockingAngle', (v) => v as int?),
          comboDuration: $checkedConvert('comboDuration', (v) => v as int?),
          followThrough:
              $checkedConvert('followThrough', (v) => (v as num?)?.toDouble()),
          range: $checkedConvert('range', (v) => (v as num?)?.toDouble()),
          slamAttack: $checkedConvert('slamAttack', (v) => v as int?),
          slamRadialDamage:
              $checkedConvert('slamRadialDamage', (v) => v as int?),
          slamRadius: $checkedConvert('slamRadius', (v) => v as int?),
          slideAttack: $checkedConvert('slideAttack', (v) => v as int?),
          heavyAttackDamage:
              $checkedConvert('heavyAttackDamage', (v) => v as int?),
          heavySlamAttack: $checkedConvert('heavySlamAttack', (v) => v as int?),
          heavySlamRadius: $checkedConvert('heavySlamRadius', (v) => v as int?),
          heavySlamRadialDamage:
              $checkedConvert('heavySlamRadialDamage', (v) => v as int?),
          windUp: $checkedConvert('windUp', (v) => (v as num?)?.toDouble()),
          stancePolarity:
              $checkedConvert('stancePolarity', (v) => v as String?),
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
      'vaulted': instance.vaulted,
      'slot': instance.slot,
      'criticalChance': instance.criticalChance,
      'criticalMultiplier': instance.criticalMultiplier,
      'fireRate': instance.fireRate,
      'omegaAttenuation': instance.omegaAttenuation,
      'totalDamage': instance.totalDamage,
      'damagePerShot': instance.damagePerShot,
      'polarities': instance.polarities,
      'marketCost': instance.marketCost,
      'disposition': instance.disposition,
      'sentinel': instance.sentinel,
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
      'components': instance.components?.map((e) => e.toJson()).toList(),
      'patchlogs': instance.patchlogs?.map((e) => e.toJson()).toList(),
      'damage': instance.damage?.toJson(),
    };

DamageModel _$DamageModelFromJson(Map json) => $checkedCreate(
      'DamageModel',
      json,
      ($checkedConvert) {
        final val = DamageModel(
          total: $checkedConvert('total', (v) => (v as num).toDouble()),
          impact: $checkedConvert('impact', (v) => (v as num).toDouble()),
          puncture: $checkedConvert('puncture', (v) => (v as num).toDouble()),
          slash: $checkedConvert('slash', (v) => (v as num).toDouble()),
          heat: $checkedConvert('heat', (v) => (v as num).toDouble()),
          cold: $checkedConvert('cold', (v) => (v as num).toDouble()),
          electricty:
              $checkedConvert('electricty', (v) => (v as num?)?.toDouble()),
          toxin: $checkedConvert('toxin', (v) => (v as num).toDouble()),
          blast: $checkedConvert('blast', (v) => (v as num).toDouble()),
          radiation: $checkedConvert('radiation', (v) => (v as num).toDouble()),
          gas: $checkedConvert('gas', (v) => (v as num).toDouble()),
          magnetic: $checkedConvert('magnetic', (v) => (v as num).toDouble()),
          viral: $checkedConvert('viral', (v) => (v as num).toDouble()),
          corrosive: $checkedConvert('corrosive', (v) => (v as num).toDouble()),
          voidE: $checkedConvert('void', (v) => (v as num).toDouble()),
          tau: $checkedConvert('tau', (v) => (v as num).toDouble()),
          cinematic: $checkedConvert('cinematic', (v) => (v as num).toDouble()),
          shieldDrain:
              $checkedConvert('shieldDrain', (v) => (v as num).toDouble()),
          healthDrain:
              $checkedConvert('healthDrain', (v) => (v as num).toDouble()),
          energyDrain:
              $checkedConvert('energyDrain', (v) => (v as num).toDouble()),
          trueD: $checkedConvert('true', (v) => (v as num).toDouble()),
        );
        return val;
      },
      fieldKeyMap: const {'voidE': 'void', 'trueD': 'true'},
    );

Map<String, dynamic> _$DamageModelToJson(DamageModel instance) =>
    <String, dynamic>{
      'total': instance.total,
      'impact': instance.impact,
      'puncture': instance.puncture,
      'slash': instance.slash,
      'heat': instance.heat,
      'cold': instance.cold,
      'electricty': instance.electricty,
      'toxin': instance.toxin,
      'blast': instance.blast,
      'radiation': instance.radiation,
      'gas': instance.gas,
      'magnetic': instance.magnetic,
      'viral': instance.viral,
      'corrosive': instance.corrosive,
      'tau': instance.tau,
      'cinematic': instance.cinematic,
      'shieldDrain': instance.shieldDrain,
      'healthDrain': instance.healthDrain,
      'energyDrain': instance.energyDrain,
      'void': instance.voidE,
      'true': instance.trueD,
    };
