import 'package:equatable/equatable.dart';

import 'abstract_item.dart';

class WeaponItem extends FoundryItem {
  const WeaponItem({
    required super.uniqueName,
    required super.name,
    required String super.description,
    required super.type,
    required super.imageName,
    required super.category,
    required String super.productCategory,
    required super.tradable,
    required int super.masteryReq,
    required int super.buildPrice,
    required int super.buildTime,
    required int super.skipBuildTimePrice,
    required int super.buildQuantity,
    required bool super.consumeOnBuild,
    super.components,
    required this.slot,
    required this.criticalChance,
    required this.criticalMultiplier,
    required this.statusChance,
    required this.fireRate,
    required this.omegaAttenuation,
    this.polarities,
    required this.damage,
    required this.totalDamage,
    required this.damagePerShot,
    // this.damageTypes,
    this.disposition,
    this.marketCost,
    this.sentinel,
    this.releaseDate,
    super.vaultDate,
    super.vaulted,
    this.estimatedVaultDate,
    super.patchlogs,
    super.wikiaThumbnail,
    super.wikiaUrl,
  });

  final int slot;
  final double criticalChance, criticalMultiplier, statusChance;

  // On melee weapons fireRate is attack speed
  final double fireRate;

  final double omegaAttenuation;
  final Damage? damage;
  final double totalDamage;
  final List<double> damagePerShot;
  // final Map<String, num>? damageTypes;
  final List<String>? polarities;
  final int? marketCost;
  final int? disposition;
  final bool? sentinel;
  final String? releaseDate, estimatedVaultDate;

  @override
  List<Object?> get props {
    return super.props
      ..addAll([
        criticalChance,
        criticalMultiplier,
        statusChance,
        fireRate,
        omegaAttenuation,
        slot,
        damage,
        damage,
        damagePerShot,
        polarities,
        marketCost,
        disposition,
        sentinel,
        vaulted,
        releaseDate,
        estimatedVaultDate,
      ]);
  }
}

class ProjectileWeapon extends WeaponItem {
  const ProjectileWeapon(
    this._flight, {
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.imageName,
    required super.category,
    required super.productCategory,
    required super.tradable,
    required super.masteryReq,
    required super.slot,
    super.components,
    required super.criticalChance,
    required super.criticalMultiplier,
    required super.statusChance,
    required super.fireRate,
    required super.omegaAttenuation,
    required super.damage,
    required super.totalDamage,
    required super.damagePerShot,
    super.polarities,
    super.disposition,
    super.marketCost,
    super.sentinel,
    super.releaseDate,
    super.vaultDate,
    super.vaulted,
    super.estimatedVaultDate,
    this.accuracy,
    dynamic ammo,
    required this.magazineSize,
    this.multishot,
    this.reloadTime,
    this.noise,
    this.trigger,
    int? buildPrice,
    int? buildTime,
    int? skipBuildTimePrice,
    int? buildQuantity,
    bool? consumeOnBuild,
    super.patchlogs,
    super.wikiaThumbnail,
    super.wikiaUrl,
  })  : _ammo = ammo,
        super(
          buildPrice: buildPrice ?? 0,
          buildTime: buildTime ?? 0,
          skipBuildTimePrice: skipBuildTimePrice ?? 0,
          buildQuantity: buildQuantity ?? 0,
          consumeOnBuild: consumeOnBuild ?? false,
        );

  final dynamic _ammo;
  final int? magazineSize;
  final double? reloadTime;
  final String? trigger;
  final double? accuracy;
  final String? noise;
  final double? multishot;
  final dynamic _flight;

  int? get ammo => _ammo is String ? null : _ammo as int?;
  int? get flight => _flight is String ? null : _flight as int?;

  @override
  List<Object?> get props {
    return super.props
      ..addAll([
        _ammo,
        magazineSize,
        reloadTime,
        trigger,
        accuracy,
        noise,
        multishot,
        _flight,
      ]);
  }
}

class MeleeWeapon extends WeaponItem {
  const MeleeWeapon({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.imageName,
    required super.category,
    required super.productCategory,
    required super.tradable,
    required super.masteryReq,
    int? buildPrice,
    int? buildTime,
    int? skipBuildTimePrice,
    int? buildQuantity,
    bool? consumeOnBuild,
    required super.slot,
    super.components,
    required super.criticalChance,
    required super.criticalMultiplier,
    required super.statusChance,
    required this.attackSpeed,
    required super.omegaAttenuation,
    required super.damage,
    required super.totalDamage,
    required super.damagePerShot,
    super.polarities,
    super.disposition,
    super.marketCost,
    super.sentinel,
    super.releaseDate,
    super.vaulted,
    super.estimatedVaultDate,
    required this.blockingAngle,
    required this.comboDuration,
    required this.followThrough,
    required this.range,
    required this.slamAttack,
    required this.slamRadialDamage,
    required this.slamRadius,
    required this.slideAttack,
    required this.heavyAttackDamage,
    required this.heavySlamAttack,
    this.heavySlamRadius,
    this.heavySlamRadialDamage,
    this.windUp,
    this.stancePolarity,
    super.patchlogs,
    super.wikiaThumbnail,
    super.wikiaUrl,
  }) : super(
          fireRate: attackSpeed,
          buildPrice: buildPrice ?? 0,
          buildTime: buildTime ?? 0,
          skipBuildTimePrice: skipBuildTimePrice ?? 0,
          buildQuantity: buildQuantity ?? 0,
          consumeOnBuild: consumeOnBuild ?? false,
        );

  final double attackSpeed;
  final int? blockingAngle, comboDuration;
  final double? followThrough, range;
  final int? slamAttack, slamRadialDamage, slamRadius;
  final int? slideAttack;
  final int? heavyAttackDamage, heavySlamAttack;
  final int? heavySlamRadius, heavySlamRadialDamage;
  final double? windUp;
  final String? stancePolarity;

  // Becasue fireRate and attackSpeed are the same in melee
  // there is no need to pass it down since it will be done in super
  @override
  List<Object?> get props {
    return super.props
      ..addAll([
        blockingAngle,
        comboDuration,
        followThrough,
        range,
        slamAttack,
        slamRadialDamage,
        slamRadius,
        slideAttack,
        heavyAttackDamage,
        heavySlamAttack,
        heavySlamRadius,
        windUp,
        stancePolarity,
      ]);
  }
}

class Damage extends Equatable {
  const Damage({
    required this.total,
    required this.impact,
    required this.puncture,
    required this.slash,
    required this.heat,
    required this.cold,
    required this.electricty,
    required this.toxin,
    required this.blast,
    required this.radiation,
    required this.gas,
    required this.magnetic,
    required this.viral,
    required this.corrosive,
    required this.voidEnergy,
    required this.tau,
    required this.cinematic,
    required this.shieldDrain,
    required this.healthDrain,
    required this.energyDrain,
    required this.trueDamage,
  });

  final double total;
  final double impact;
  final double puncture;
  final double slash;
  final double heat;
  final double cold;
  final double? electricty;
  final double toxin;
  final double blast;
  final double radiation;
  final double gas;
  final double magnetic;
  final double viral;
  final double corrosive;
  final double voidEnergy;
  final double tau;
  final double cinematic;
  final double shieldDrain;
  final double healthDrain;
  final double energyDrain;
  final double trueDamage;

  @override
  List<Object?> get props {
    return [
      total,
      impact,
      puncture,
      slash,
      heat,
      cold,
      electricty,
      toxin,
      blast,
      radiation,
      gas,
      magnetic,
      viral,
      corrosive,
      voidEnergy,
      tau,
      cinematic,
      shieldDrain,
      healthDrain,
      energyDrain,
      trueDamage
    ];
  }
}
