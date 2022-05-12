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
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.imageName,
    required super.category,
    required super.productCategory,
    required super.tradable,
    required super.masteryReq,
    super.buildPrice,
    super.buildTime,
    super.skipBuildTimePrice,
    super.buildQuantity,
    super.consumeOnBuild,
    required super.slot,
    this.components,
    required super.criticalChance,
    required super.criticalMultiplier,
    required this.procChance,
    required double fireRate,
    required super.omegaAttenuation,
    required super.damage,
    required super.totalDamage,
    required super.damagePerShot,
    super.polarities,
    dynamic marketCost,
    super.disposition,
    super.sentinel,
    super.releaseDate,
    super.vaulted,
    super.estimatedVaultDate,
    super.blockingAngle,
    super.comboDuration,
    super.followThrough,
    super.range,
    super.slamAttack,
    super.slamRadialDamage,
    super.slamRadius,
    super.slideAttack,
    super.heavyAttackDamage,
    super.heavySlamAttack,
    super.heavySlamRadius,
    super.heavySlamRadialDamage,
    super.windUp,
    super.stancePolarity,
    this.patchlogs,
    super.wikiaThumbnail,
    super.wikiaUrl,
  }) : super(
          statusChance: procChance,
          attackSpeed: fireRate,
          marketCost: marketCost is String ? 0 : marketCost as int?,
          components: components,
          patchlogs: patchlogs,
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
