import 'abstract_item.dart';
import 'component.dart';
import 'patch_log.dart';

class WeaponItem extends FoundryItem {
  const WeaponItem({
    String uniqueName,
    String name,
    String description,
    String type,
    String imageName,
    String category,
    String productCategory,
    bool tradable,
    int masteryReq,
    int buildPrice,
    int buildTime,
    int skipBuildTimePrice,
    int buildQuantity,
    bool consumeOnBuild,
    List<Component> components,
    this.slot,
    this.criticalChance,
    this.criticalMultiplier,
    this.statusChance,
    this.fireRate,
    this.omegaAttenuation,
    this.polarities,
    this.damage,
    this.totalDamage,
    this.damagePerShot,
    this.damageTypes,
    this.marketCost,
    this.disposition,
    this.sentinel,
    this.releaseDate,
    this.vaulted,
    this.estimatedVaultDate,
    List<Patchlog> patchlogs,
    String wikiaThumbnail,
    String wikiaUrl,
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
  final Map<String, double> damageTypes;
  final List<String> polarities;
  final int marketCost, disposition;
  final bool sentinel, vaulted;
  final String releaseDate, estimatedVaultDate;

  @override
  List<Object> get props {
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
    String uniqueName,
    String name,
    String description,
    String type,
    String imageName,
    String category,
    String productCategory,
    bool tradable,
    int masteryReq,
    int buildPrice,
    int buildTime,
    int skipBuildTimePrice,
    int buildQuantity,
    bool consumeOnBuild,
    int slot,
    List<Component> components,
    double criticalChance,
    double criticalMultiplier,
    double statusChance,
    double fireRate,
    double omegaAttenuation,
    String damage,
    double totalDamage,
    List<double> damagePerShot,
    Map<String, double> damageTypes,
    List<String> polarities,
    int marketCost,
    int disposition,
    bool sentinel,
    String releaseDate,
    bool vaulted,
    String estimatedVaultDate,
    this.accuracy,
    this.ammo,
    this.magazineSize,
    this.multishot,
    this.reloadTime,
    this.noise,
    this.trigger,
    this.flight,
    List<Patchlog> patchlogs,
    String wikiaThumbnail,
    String wikiaUrl,
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

  final int ammo, magazineSize;
  final double reloadTime;
  final String trigger;
  final double accuracy;
  final String noise;
  final double multishot;
  final int flight;

  @override
  List<Object> get props {
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
    String uniqueName,
    String name,
    String description,
    String type,
    String imageName,
    String category,
    String productCategory,
    bool tradable,
    int masteryReq,
    int buildPrice,
    int buildTime,
    int skipBuildTimePrice,
    int buildQuantity,
    bool consumeOnBuild,
    int slot,
    List<Component> components,
    double criticalChance,
    double criticalMultiplier,
    double statusChance,
    this.attackSpeed,
    double omegaAttenuation,
    String damage,
    double totalDamage,
    List<double> damagePerShot,
    Map<String, double> damageTypes,
    List<String> polarities,
    int marketCost,
    int disposition,
    bool sentinel,
    String releaseDate,
    bool vaulted,
    String estimatedVaultDate,
    this.blockingAngle,
    this.comboDuration,
    this.followThrough,
    this.range,
    this.slamAttack,
    this.slamRadialDamage,
    this.slamRadius,
    this.slideAttack,
    this.heavyAttackDamage,
    this.heavySlamAttack,
    this.heavySlamRadius,
    this.heavySlamRadialDamage,
    this.windUp,
    this.stancePolarity,
    List<Patchlog> patchlogs,
    String wikiaThumbnail,
    String wikiaUrl,
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
  List<Object> get props {
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
