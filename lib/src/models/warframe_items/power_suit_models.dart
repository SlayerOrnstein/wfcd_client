import 'package:json_annotation/json_annotation.dart';

import '../../entities/warframe_items/power_suits.dart';
import 'component_model.dart';
import 'patch_log_model.dart';

part 'power_suit_models.g.dart';

@JsonSerializable()
class AbilityModel extends Ability {
  const AbilityModel({String name, String description})
      : super(name: name, description: description);

  factory AbilityModel.fromJson(Map<String, dynamic> json) =>
      _$AbilityModelFromJson(json);

  Map<String, dynamic> toJson() => _$AbilityModelToJson(this);
}

@JsonSerializable()
class WarframeModel extends Warframe {
  const WarframeModel({
    String uniqueName,
    String name,
    String description,
    String aura,
    int health,
    int shield,
    int armor,
    int power,
    int masteryReq,
    double sprintSpeed,
    String passiveDescription,
    this.abilities,
    int buildPrice,
    int buildTime,
    int skipBuildTimePrice,
    int buildQuantity,
    bool consumeOnBuild,
    this.components,
    String type,
    String imageName,
    String category,
    String productCategory,
    bool tradable,
    this.patchlogs,
    String wikiaThumbnail,
    String wikiaUrl,
    String sex,
    String introduced,
    List<String> polarities,
    int color,
  }) : super(
          uniqueName: uniqueName,
          name: name,
          description: description,
          aura: aura,
          health: health,
          shield: shield,
          armor: armor,
          power: power,
          masteryReq: masteryReq,
          sprintSpeed: sprintSpeed,
          passiveDescription: passiveDescription,
          abilities: abilities,
          buildPrice: buildPrice,
          buildTime: buildTime,
          skipBuildTimePrice: skipBuildTimePrice,
          buildQuantity: buildQuantity,
          consumeOnBuild: consumeOnBuild,
          components: components,
          type: type,
          imageName: imageName,
          category: category,
          productCategory: productCategory,
          tradable: tradable,
          patchlogs: patchlogs,
          wikiaThumbnail: wikiaThumbnail,
          wikiaUrl: wikiaUrl,
          sex: sex,
          introduced: introduced,
          polarities: polarities,
          color: color,
        );

  factory WarframeModel.fromJson(Map<String, dynamic> json) {
    return _$WarframeModelFromJson(json);
  }

  @override
  final List<ComponentModel> components;

  @override
  final List<AbilityModel> abilities;

  @override
  final List<PatchlogModel> patchlogs;

  Map<String, dynamic> toJson() => _$WarframeModelToJson(this);
}

@JsonSerializable()
class HeavyPowerSuitModel extends HeavyPowerSuit {
  const HeavyPowerSuitModel({
    String uniqueName,
    String name,
    String description,
    String type,
    String imageName,
    String category,
    String productCategory,
    List<String> polarities,
    bool tradable,
    int masteryReq,
    int buildPrice,
    int buildTime,
    int skipBuildTimePrice,
    int buildQuantity,
    bool consumeOnBuild,
    this.components,
    int health,
    int shield,
    int armor,
    int power,
    this.abilities,
    double sprintSpeed,
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
          health: health,
          armor: armor,
          shield: shield,
          power: power,
          polarities: polarities,
          productCategory: productCategory,
          tradable: tradable,
          components: components,
          masteryReq: masteryReq,
          buildPrice: buildPrice,
          buildTime: buildTime,
          skipBuildTimePrice: skipBuildTimePrice,
          buildQuantity: buildQuantity,
          consumeOnBuild: consumeOnBuild,
          sprintSpeed: sprintSpeed,
          patchlogs: patchlogs,
          wikiaThumbnail: wikiaThumbnail,
          wikiaUrl: wikiaUrl,
        );

  factory HeavyPowerSuitModel.fromJson(Map<String, dynamic> json) {
    return _$HeavyPowerSuitModelFromJson(json);
  }

  @override
  final List<ComponentModel> components;

  @override
  final List<AbilityModel> abilities;

  @override
  final List<PatchlogModel> patchlogs;

  Map<String, dynamic> toJson() => _$HeavyPowerSuitModelToJson(this);
}

@JsonSerializable()
class CompanionModel extends Companion {
  const CompanionModel({
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
    this.components,
    int health,
    int shield,
    int armor,
    int power,
    List<String> polarities,
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
          health: health,
          armor: armor,
          shield: shield,
          power: power,
          polarities: polarities,
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

  factory CompanionModel.fromJson(Map<String, dynamic> json) {
    return _$CompanionModelFromJson(json);
  }

  @override
  final List<ComponentModel> components;

  @override
  final List<PatchlogModel> patchlogs;

  Map<String, dynamic> toJson() => _$CompanionModelToJson(this);
}
