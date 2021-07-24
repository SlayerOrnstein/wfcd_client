import 'package:json_annotation/json_annotation.dart';

import '../../entities/warframe_items/weapons.dart';
import 'component_model.dart';
import 'patch_log_model.dart';

part 'weapon_models.g.dart';

@JsonSerializable()
class ProjectileWeaponModel extends ProjectileWeapon {
  const ProjectileWeaponModel({
    required String uniqueName,
    required String name,
    required String description,
    required String type,
    required String imageName,
    required String category,
    required String productCategory,
    required bool tradable,
    required List<double> damagePerShot,
    int? magazineSize,
    double? reloadTime,
    String? trigger,
    double? accuracy,
    required double criticalChance,
    required double criticalMultiplier,
    required this.procChance,
    required double fireRate,
    required int slot,
    dynamic ammo,
    dynamic flight,
    String? noise,
    bool? sentinel,
    required int masteryReq,
    required double omegaAttenuation,
    int? buildPrice,
    int? buildTime,
    int? skipBuildTimePrice,
    int? buildQuantity,
    bool? consumeOnBuild,
    this.components,
    List<String>? polarities,
    int? marketCost,
    bool? vaulted,
    int? disposition,
    double? multishot,
    required dynamic damage,
    required double totalDamage,
    String? estimatedVaultDate,
    String? releaseDate,
    this.patchlogs,
    String? wikiaThumbnail,
    String? wikiaUrl,
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
          polarities: polarities,
          marketCost: marketCost,
          vaulted: vaulted,
          disposition: disposition,
          multishot: multishot,
          ammo: ammo,
          totalDamage: totalDamage,
          components: components,
          estimatedVaultDate: estimatedVaultDate,
          releaseDate: releaseDate,
          damage: damage,
        );

  factory ProjectileWeaponModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectileWeaponModelFromJson(json);

  final double procChance;

  @override
  final List<ComponentModel>? components;

  @override
  final List<PatchlogModel>? patchlogs;

  Map<String, dynamic> toJson() => _$ProjectileWeaponModelToJson(this);
}

@JsonSerializable()
class MeleeWeaponModel extends MeleeWeapon {
  const MeleeWeaponModel({
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
    this.components,
    required double criticalChance,
    required double criticalMultiplier,
    required this.procChance,
    required double fireRate,
    required double omegaAttenuation,
    required dynamic damage,
    required double totalDamage,
    required List<double> damagePerShot,
    List<String>? polarities,
    dynamic marketCost,
    int? disposition,
    bool? sentinel,
    String? releaseDate,
    bool? vaulted,
    String? estimatedVaultDate,
    int? blockingAngle,
    int? comboDuration,
    double? followThrough,
    double? range,
    int? slamAttack,
    int? slamRadialDamage,
    int? slamRadius,
    int? slideAttack,
    int? heavyAttackDamage,
    int? heavySlamAttack,
    int? heavySlamRadius,
    int? heavySlamRadialDamage,
    double? windUp,
    String? stancePolarity,
    this.patchlogs,
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
          statusChance: procChance,
          attackSpeed: fireRate,
          slot: slot,
          omegaAttenuation: omegaAttenuation,
          damage: damage,
          totalDamage: totalDamage,
          damagePerShot: damagePerShot,
          polarities: polarities,
          marketCost: marketCost is String ? 0 : marketCost as int?,
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
  final List<ComponentModel>? components;

  @override
  final List<PatchlogModel>? patchlogs;

  Map<String, dynamic> toJson() => _$MeleeWeaponModelToJson(this);
}
