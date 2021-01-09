import 'package:json_annotation/json_annotation.dart';

import '../../entities/warframe_items/weapons.dart';
import 'component_model.dart';
import 'patch_log_model.dart';

part 'weapon_models.g.dart';

@JsonSerializable()
class ProjectileWeaponModel extends ProjectileWeapon {
  const ProjectileWeaponModel({
    String uniqueName,
    String name,
    String description,
    String type,
    String imageName,
    String category,
    String productCategory,
    bool tradable,
    String wikiaThumbnail,
    String wikiaUrl,
    List<double> damagePerShot,
    int magazineSize,
    double reloadTime,
    String trigger,
    double accuracy,
    double criticalChance,
    double criticalMultiplier,
    this.procChance,
    double fireRate,
    int slot,
    int ammo,
    dynamic flight,
    String noise,
    bool sentinel,
    int masteryReq,
    double omegaAttenuation,
    int buildPrice,
    int buildTime,
    int skipBuildTimePrice,
    int buildQuantity,
    bool consumeOnBuild,
    this.components,
    Map<String, double> damageTypes,
    List<String> polarities,
    int marketCost,
    bool vaulted,
    int disposition,
    double multishot,
    this.patchlogs,
  }) : super(
          flight,
          uniqueName: uniqueName,
          name: name,
          description: description,
          type: type,
          imageName: imageName,
          category: category,
          productCategory: productCategory,
          tradable: tradable,
          wikiaUrl: wikiaUrl,
          wikiaThumbnail: wikiaThumbnail,
          damagePerShot: damagePerShot,
          magazineSize: magazineSize,
          reloadTime: reloadTime,
          trigger: trigger,
          accuracy: accuracy,
          criticalChance: criticalChance,
          criticalMultiplier: criticalMultiplier,
          statusChance: procChance,
          fireRate: fireRate,
          slot: slot,
          noise: noise,
          sentinel: sentinel,
          masteryReq: masteryReq,
          omegaAttenuation: omegaAttenuation,
          buildPrice: buildPrice,
          buildTime: buildTime,
          skipBuildTimePrice: skipBuildTimePrice,
          buildQuantity: buildQuantity,
          consumeOnBuild: consumeOnBuild,
          damageTypes: damageTypes,
          polarities: polarities,
          marketCost: marketCost,
          vaulted: vaulted,
          disposition: disposition,
          multishot: multishot,
          ammo: ammo,
        );

  factory ProjectileWeaponModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectileWeaponModelFromJson(json);

  final double procChance;

  @override
  final List<ComponentModel> components;

  @override
  final List<PatchlogModel> patchlogs;

  Map<String, dynamic> toJson() => _$ProjectileWeaponModelToJson(this);
}

@JsonSerializable()
class MeleeWeaponModel extends MeleeWeapon {
  const MeleeWeaponModel({
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
    this.components,
    double criticalChance,
    double criticalMultiplier,
    this.procChance,
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
    int blockingAngle,
    int comboDuration,
    double followThrough,
    double range,
    int slamAttack,
    int slamRadialDamage,
    int slamRadius,
    int slideAttack,
    int heavyAttackDamage,
    int heavySlamAttack,
    int heavySlamRadius,
    int heavySlamRadialDamage,
    double windUp,
    String stancePolarity,
    this.patchlogs,
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
          statusChance: procChance,
          attackSpeed: fireRate,
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
          blockingAngle: blockingAngle,
          comboDuration: comboDuration,
          followThrough: followThrough,
          range: range,
          slamAttack: slamAttack,
          slamRadialDamage: slamRadialDamage,
          slamRadius: slamRadius,
          slideAttack: slideAttack,
          heavyAttackDamage: heavyAttackDamage,
          heavySlamAttack: heavySlamAttack,
          heavySlamRadius: heavySlamRadius,
          heavySlamRadialDamage: heavySlamRadialDamage,
          windUp: windUp,
          stancePolarity: stancePolarity,
        );

  factory MeleeWeaponModel.fromJson(Map<String, dynamic> json) {
    return _$MeleeWeaponModelFromJson(json);
  }

  final double procChance;

  @override
  final List<ComponentModel> components;

  @override
  final List<PatchlogModel> patchlogs;

  Map<String, dynamic> toJson() => _$MeleeWeaponModelToJson(this);
}
