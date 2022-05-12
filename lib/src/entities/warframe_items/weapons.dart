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
    required dynamic damage,
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
  })  : _damage = damage;

  final int slot;
  final double criticalChance, criticalMultiplier, statusChance;

  // On melee weapons fireRate is attack speed
  final double fireRate;

  final double omegaAttenuation;
  final dynamic _damage;
  final double totalDamage;
  final List<double> damagePerShot;
  // final Map<String, num>? damageTypes;
  final List<String>? polarities;
  final int? marketCost;
  final int? disposition;
  final bool? sentinel;
  final String? releaseDate, estimatedVaultDate;

  double? get damage {
    if (_damage is String) {
      return double.parse(
        (_damage as String).replaceAll(RegExp('[a-zA-Z]'), ''),
      );
    } else if (_damage is int) {
      return (_damage as int).toDouble();
    } else {
      return _damage as double?;
    }
  }

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
        _damage,
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
