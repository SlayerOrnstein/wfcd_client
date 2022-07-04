import 'package:json_annotation/json_annotation.dart';

import '../../entities/warframe_items/component.dart';
import '../../entities/warframe_items/power_suits.dart';
import 'component_model.dart';
import 'patch_log_model.dart';

part 'power_suit_models.g.dart';

@JsonSerializable()
class AbilityModel extends Ability {
  const AbilityModel({required super.name, required super.description});

  factory AbilityModel.fromJson(Map<String, dynamic> json) =>
      _$AbilityModelFromJson(json);

  Map<String, dynamic> toJson() => _$AbilityModelToJson(this);
}

@JsonSerializable()
class WarframeModel extends Warframe {
  const WarframeModel({
    required super.uniqueName,
    required super.name,
    required super.description,
    super.aura,
    required super.health,
    required super.shield,
    required super.armor,
    required super.power,
    required super.masteryReq,
    required super.sprintSpeed,
    required super.passiveDescription,
    required this.abilities,
    int? buildPrice,
    int? buildTime,
    int? skipBuildTimePrice,
    int? buildQuantity,
    bool? consumeOnBuild,
    required this.components,
    required super.type,
    required super.imageName,
    required super.category,
    required super.productCategory,
    super.tradable,
    required super.stamina,
    this.patchlogs,
    super.wikiaThumbnail,
    super.wikiaUrl,
    super.vaultDate,
    super.vaulted,
    required super.sex,
    required this.introduced,
    required super.polarities,
    required super.color,
  }) : super(
          abilities: abilities,
          buildPrice: buildPrice ?? 0,
          buildTime: buildTime ?? 0,
          skipBuildTimePrice: skipBuildTimePrice ?? 0,
          buildQuantity: buildQuantity ?? 0,
          consumeOnBuild: consumeOnBuild ?? false,
          components: components ?? const <Component>[],
          patchlogs: patchlogs,
          introduced: introduced,
        );

  factory WarframeModel.fromJson(Map<String, dynamic> json) {
    return _$WarframeModelFromJson(json);
  }

  @override
  final List<ComponentModel>? components;

  @override
  final List<AbilityModel> abilities;

  @override
  final List<PatchlogModel>? patchlogs;

  @override
  final IntroducedModel introduced;

  Map<String, dynamic> toJson() => _$WarframeModelToJson(this);
}

@JsonSerializable()
class IntroducedModel extends Introduced {
  const IntroducedModel({
    required super.name,
    required super.url,
    required super.date,
  });

  factory IntroducedModel.fromJson(Map<String, dynamic> json) {
    return _$IntroducedModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$IntroducedModelToJson(this);
}

@JsonSerializable()
class HeavyPowerSuitModel extends HeavyPowerSuit {
  const HeavyPowerSuitModel({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.imageName,
    required super.category,
    required super.productCategory,
    super.polarities,
    super.tradable,
    required super.masteryReq,
    required super.buildPrice,
    required super.buildTime,
    required super.skipBuildTimePrice,
    required super.buildQuantity,
    required super.consumeOnBuild,
    required this.components,
    required super.health,
    required super.shield,
    required super.armor,
    required super.power,
    required this.abilities,
    required super.sprintSpeed,
    this.patchlogs,
    super.wikiaThumbnail,
    super.wikiaUrl,
    super.vaultDate,
    super.vaulted,
  }) : super(
          abilities: abilities,
          components: components,
          patchlogs: patchlogs,
        );

  factory HeavyPowerSuitModel.fromJson(Map<String, dynamic> json) {
    return _$HeavyPowerSuitModelFromJson(json);
  }

  @override
  final List<ComponentModel> components;

  @override
  final List<AbilityModel> abilities;

  @override
  final List<PatchlogModel>? patchlogs;

  Map<String, dynamic> toJson() => _$HeavyPowerSuitModelToJson(this);
}

@JsonSerializable()
class CompanionModel extends Companion {
  const CompanionModel({
    required super.uniqueName,
    required super.name,
    String? description,
    required super.type,
    required super.imageName,
    required super.category,
    required super.productCategory,
    super.tradable,
    super.masteryReq,
    super.buildPrice,
    super.buildTime,
    super.skipBuildTimePrice,
    super.buildQuantity,
    super.consumeOnBuild,
    this.components,
    required super.health,
    required super.shield,
    required super.armor,
    required super.power,
    super.polarities,
    this.patchlogs,
    super.wikiaThumbnail,
    super.wikiaUrl,
    super.vaultDate,
    super.vaulted,
  }) : super(
          description: description ?? '',
          components: components,
          patchlogs: patchlogs,
        );

  factory CompanionModel.fromJson(Map<String, dynamic> json) {
    return _$CompanionModelFromJson(json);
  }

  @override
  final List<ComponentModel>? components;

  @override
  final List<PatchlogModel>? patchlogs;

  Map<String, dynamic> toJson() => _$CompanionModelToJson(this);
}
