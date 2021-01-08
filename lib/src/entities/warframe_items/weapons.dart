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
    required List<Component> components,
    required this.slot,
    required this.criticalChance,
    required this.criticalMultiplier,
    required this.statusChance,
    required this.fireRate,
    required this.omegaAttenuation,
    required this.polarities,
    required this.damage,
    required this.totalDamage,
    required this.damagePerShot,
    required this.damageTypes,
    required this.marketCost,
    required this.disposition,
    this.sentinel,
    this.releaseDate,
    this.vaulted,
    this.estimatedVaultDate,
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
  final String damage;
  final double totalDamage;
  final List<double> damagePerShot;
  final Map<String, num> damageTypes;
  final List<String> polarities;
  final int marketCost, disposition;
  final bool? sentinel, vaulted;
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
  const ProjectileWeapon({
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
    required int slot,
    required List<Component> components,
    required double criticalChance,
    required double criticalMultiplier,
    required double statusChance,
    required double fireRate,
    required double omegaAttenuation,
    required String damage,
    required double totalDamage,
    required List<double> damagePerShot,
    required Map<String, num> damageTypes,
    required List<String> polarities,
    required int marketCost,
    required int disposition,
    bool? sentinel,
    String? releaseDate,
    bool? vaulted,
    String? estimatedVaultDate,
    required this.accuracy,
    this.ammo,
    required this.magazineSize,
    required this.multishot,
    required this.reloadTime,
    required this.noise,
    required this.trigger,
    this.flight,
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
          buildPrice: buildPrice,
          buildTime: buildTime,
          skipBuildTimePrice: skipBuildTimePrice,
          buildQuantity: buildQuantity,
          consumeOnBuild: consumeOnBuild,
          patchlogs: patchlogs,
          wikiaThumbnail: wikiaThumbnail,
          wikiaUrl: wikiaUrl,
        );

  final int? ammo;
  final int magazineSize;
  final double reloadTime;
  final String trigger;
  final double accuracy;
  final String noise;
  final double multishot;
  final int? flight;

  @override
  List<Object?> get props {
    return super.props
      ..addAll([
        ammo,
        magazineSize,
        reloadTime,
        trigger,
        accuracy,
        noise,
        multishot,
        flight,
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
    required int buildPrice,
    required int buildTime,
    required int skipBuildTimePrice,
    required int buildQuantity,
    required bool consumeOnBuild,
    required int slot,
    required List<Component> components,
    required double criticalChance,
    required double criticalMultiplier,
    required double statusChance,
    required this.attackSpeed,
    required double omegaAttenuation,
    required String damage,
    required double totalDamage,
    required List<double> damagePerShot,
    required Map<String, num> damageTypes,
    required List<String> polarities,
    required int marketCost,
    required int disposition,
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
    required this.heavySlamRadius,
    required this.heavySlamRadialDamage,
    required this.windUp,
    required this.stancePolarity,
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
          buildPrice: buildPrice,
          buildTime: buildTime,
          skipBuildTimePrice: skipBuildTimePrice,
          buildQuantity: buildQuantity,
          consumeOnBuild: consumeOnBuild,
          patchlogs: patchlogs,
          wikiaThumbnail: wikiaThumbnail,
          wikiaUrl: wikiaUrl,
        );

  final double attackSpeed;
  final int blockingAngle, comboDuration;
  final double followThrough, range;
  final int slamAttack, slamRadialDamage, slamRadius;
  final int slideAttack;
  final int heavyAttackDamage, heavySlamAttack, heavySlamRadius;
  final int heavySlamRadialDamage;
  final double windUp;
  final String stancePolarity;

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
