import 'package:json_annotation/json_annotation.dart';

import '../../../entities.dart';
import '../../entities/warframe_items/power_suits.dart';
import 'component_model.dart';
import 'patch_log_model.dart';

part 'power_suit_models.g.dart';

@JsonSerializable()
class AbilityModel extends Ability {
  const AbilityModel({required String name, required String description})
      : super(name: name, description: description);

  factory AbilityModel.fromJson(Map<String, dynamic> json) =>
      _$AbilityModelFromJson(json);

  Map<String, dynamic> toJson() => _$AbilityModelToJson(this);
}

@JsonSerializable()
class WarframeModel extends Warframe {
  const WarframeModel({
    required String uniqueName,
    required String name,
    required String description,
    String? aura,
    required int health,
    required int shield,
    required int armor,
    required int power,
    required int masteryReq,
    required double sprintSpeed,
    required String passiveDescription,
    required this.abilities,
    int? buildPrice,
    int? buildTime,
    int? skipBuildTimePrice,
    int? buildQuantity,
    bool? consumeOnBuild,
    required this.components,
    required String type,
    required String imageName,
    required String category,
    required String productCategory,
    required bool tradable,
    required int stamina,
    this.patchlogs,
    String? wikiaThumbnail,
    String? wikiaUrl,
    required String sex,
    required this.introduced,
    required List<String> polarities,
    required int color,
  }) : super(
          uniqueName: uniqueName,
          name: name,
          description: description,
          aura: aura,
          health: health,
          shield: shield,
          armor: armor,
          power: power,
          stamina: stamina,
          masteryReq: masteryReq,
          sprintSpeed: sprintSpeed,
          passiveDescription: passiveDescription,
          abilities: abilities,
          buildPrice: buildPrice ?? 0,
          buildTime: buildTime ?? 0,
          skipBuildTimePrice: skipBuildTimePrice ?? 0,
          buildQuantity: buildQuantity ?? 0,
          consumeOnBuild: consumeOnBuild ?? false,
          components: components ?? const <Component>[],
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
    required String name,
    required String url,
    required String date,
  }) : super(name: name, url: url, date: date);

  factory IntroducedModel.fromJson(Map<String, dynamic> json) {
    return _$IntroducedModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$IntroducedModelToJson(this);
}

@JsonSerializable()
class HeavyPowerSuitModel extends HeavyPowerSuit {
  const HeavyPowerSuitModel({
    required String uniqueName,
    required String name,
    required String description,
    required String type,
    required String imageName,
    required String category,
    required String productCategory,
    List<String>? polarities,
    required bool tradable,
    required int masteryReq,
    required int buildPrice,
    required int buildTime,
    required int skipBuildTimePrice,
    required int buildQuantity,
    required bool consumeOnBuild,
    required this.components,
    required int health,
    required int shield,
    required int armor,
    required int power,
    required this.abilities,
    required double sprintSpeed,
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
          health: health,
          armor: armor,
          shield: shield,
          power: power,
          polarities: polarities,
          abilities: abilities,
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
  final List<PatchlogModel>? patchlogs;

  Map<String, dynamic> toJson() => _$HeavyPowerSuitModelToJson(this);
}

@JsonSerializable()
class CompanionModel extends Companion {
  const CompanionModel({
    required String uniqueName,
    required String name,
    String? description,
    required String type,
    required String imageName,
    required String category,
    required String productCategory,
    required bool tradable,
    int? masteryReq,
    int? buildPrice,
    int? buildTime,
    int? skipBuildTimePrice,
    int? buildQuantity,
    bool? consumeOnBuild,
    this.components,
    required int health,
    required int shield,
    required int armor,
    required int power,
    List<String>? polarities,
    this.patchlogs,
    String? wikiaThumbnail,
    String? wikiaUrl,
  }) : super(
          uniqueName: uniqueName,
          name: name,
          description: description ?? '',
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
  final List<ComponentModel>? components;

  @override
  final List<PatchlogModel>? patchlogs;

  Map<String, dynamic> toJson() => _$CompanionModelToJson(this);
}
