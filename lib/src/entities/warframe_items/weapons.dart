import 'abstract_item.dart';
import 'component.dart';
import 'patch_log.dart';

class WeaponItem extends FoundryItem {
  const WeaponItem({
    required String uniqueName,
    required String name,
    required String description,
    required String type,
    required String imageName,
    required String category,
    required String productCategory,
    required bool tradable,
    required int masteryReq,
    required int buildPrice,
    required int buildTime,
    required int skipBuildTimePrice,
    required int buildQuantity,
    required bool consumeOnBuild,
    List<Component>? components,
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
    this.damageTypes,
    this.disposition,
    this.marketCost,
    this.sentinel,
    this.releaseDate,
    this.vaulted,
    this.estimatedVaultDate,
    List<Patchlog>? patchlogs,
    String? wikiaThumbnail,
    String? wikiaUrl,
  })  : _damage = damage,
        super(
          uniqueName: uniqueName,
          name: name,
          description: description,
          type: type,
          imageName: imageName,
          category: category,
          productCategory: productCategory,
          tradable: tradable,
          components: components,
          masteryReq: masteryReq,
          buildPrice: buildPrice,
          buildTime: buildTime,
          skipBuildTimePrice: skipBuildTimePrice,
          buildQuantity: buildQuantity,
          consumeOnBuild: consumeOnBuild,
          patchlogs: patchlogs,
          wikiaThumbnail: wikiaThumbnail,
          wikiaUrl: wikiaUrl,
        );

  final int slot;
  final double criticalChance, criticalMultiplier, statusChance;

  // On melee weapons fireRate is attack speed
  final double fireRate;

  final double omegaAttenuation;
  final dynamic _damage;
  final double totalDamage;
  final List<double> damagePerShot;
  final Map<String, num>? damageTypes;
  final List<String>? polarities;
  final int? marketCost;
  final int? disposition;
  final bool? sentinel, vaulted;
  final String? releaseDate, estimatedVaultDate;

  double? get damage {
    if (_damage is String) {
      return double.parse(
          (_damage as String).replaceAll(RegExp(r'[a-zA-Z]'), ''));
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
        damageTypes,
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
    required String uniqueName,
    required String name,
    required String description,
    required String type,
    required String imageName,
    required String category,
    required String productCategory,
    required bool tradable,
    required int masteryReq,
    required int slot,
    List<Component>? components,
    required double criticalChance,
    required double criticalMultiplier,
    required double statusChance,
    required double fireRate,
    required double omegaAttenuation,
    required dynamic damage,
    required double totalDamage,
    required List<double> damagePerShot,
    Map<String, num>? damageTypes,
    List<String>? polarities,
    int? disposition,
    int? marketCost,
    bool? sentinel,
    String? releaseDate,
    bool? vaulted,
    String? estimatedVaultDate,
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
    List<Patchlog>? patchlogs,
    String? wikiaThumbnail,
    String? wikiaUrl,
  })  : _ammo = ammo,
        super(
          uniqueName: uniqueName,
          name: name,
          description: description,
          type: type,
          imageName: imageName,
          category: category,
          productCategory: productCategory,
          criticalChance: criticalChance,
          criticalMultiplier: criticalMultiplier,
          statusChance: statusChance,
          fireRate: fireRate,
          slot: slot,
          omegaAttenuation: omegaAttenuation,
          damage: damage,
          totalDamage: totalDamage,
          damagePerShot: damagePerShot,
          damageTypes: damageTypes,
          polarities: polarities,
          marketCost: marketCost,
          disposition: disposition,
          sentinel: sentinel,
          vaulted: vaulted,
          releaseDate: releaseDate,
          estimatedVaultDate: estimatedVaultDate,
          tradable: tradable,
          components: components,
          masteryReq: masteryReq,
          buildPrice: buildPrice ?? 0,
          buildTime: buildTime ?? 0,
          skipBuildTimePrice: skipBuildTimePrice ?? 0,
          buildQuantity: buildQuantity ?? 0,
          consumeOnBuild: consumeOnBuild ?? false,
          patchlogs: patchlogs,
          wikiaThumbnail: wikiaThumbnail,
          wikiaUrl: wikiaUrl,
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
        ammo,
        flight,
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
    required String uniqueName,
    required String name,
    required String description,
    required String type,
    required String imageName,
    required String category,
    required String productCategory,
    required bool tradable,
    required int masteryReq,
    int? buildPrice,
    int? buildTime,
    int? skipBuildTimePrice,
    int? buildQuantity,
    bool? consumeOnBuild,
    required int slot,
    List<Component>? components,
    required double criticalChance,
    required double criticalMultiplier,
    required double statusChance,
    required this.attackSpeed,
    required double omegaAttenuation,
    required dynamic damage,
    required double totalDamage,
    required List<double> damagePerShot,
    Map<String, num>? damageTypes,
    List<String>? polarities,
    int? disposition,
    int? marketCost,
    bool? sentinel,
    String? releaseDate,
    bool? vaulted,
    String? estimatedVaultDate,
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
    List<Patchlog>? patchlogs,
    String? wikiaThumbnail,
    String? wikiaUrl,
  }) : super(
          uniqueName: uniqueName,
          name: name,
          description: description,
          type: type,
          imageName: imageName,
          category: category,
          productCategory: productCategory,
          criticalChance: criticalChance,
          criticalMultiplier: criticalMultiplier,
          statusChance: statusChance,
          fireRate: attackSpeed,
          slot: slot,
          omegaAttenuation: omegaAttenuation,
          damage: damage,
          totalDamage: totalDamage,
          damagePerShot: damagePerShot,
          damageTypes: damageTypes,
          polarities: polarities,
          marketCost: marketCost,
          disposition: disposition,
          sentinel: sentinel,
          vaulted: vaulted,
          releaseDate: releaseDate,
          estimatedVaultDate: estimatedVaultDate,
          tradable: tradable,
          components: components,
          masteryReq: masteryReq,
          buildPrice: buildPrice ?? 0,
          buildTime: buildTime ?? 0,
          skipBuildTimePrice: skipBuildTimePrice ?? 0,
          buildQuantity: buildQuantity ?? 0,
          consumeOnBuild: consumeOnBuild ?? false,
          patchlogs: patchlogs,
          wikiaThumbnail: wikiaThumbnail,
          wikiaUrl: wikiaUrl,
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
