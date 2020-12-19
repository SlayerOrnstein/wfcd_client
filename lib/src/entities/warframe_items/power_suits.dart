import 'package:equatable/equatable.dart';

import 'abstract_item.dart';
import 'component.dart';
import 'patch_log.dart';

abstract class PowerSuit extends FoundryItem {
  const PowerSuit({
    String uniqueName,
    String name,
    String description,
    String type,
    String imageName,
    String category,
    String productCategory,
    bool tradable,
    List<Component> components,
    int masteryReq,
    int buildPrice,
    int buildTime,
    int skipBuildTimePrice,
    int buildQuantity,
    bool consumeOnBuild,
    this.health,
    this.shield,
    this.armor,
    this.power,
    this.polarities,
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
          buildQuantity: buildQuantity,
          buildTime: buildTime,
          skipBuildTimePrice: skipBuildTimePrice,
          consumeOnBuild: consumeOnBuild,
          patchlogs: patchlogs,
          wikiaThumbnail: wikiaThumbnail,
          wikiaUrl: wikiaUrl,
        );

  final int health, shield, armor, power;
  final List<String> polarities;

  @override
  List<Object> get props {
    return super.props..addAll([health, shield, armor, power, polarities]);
  }
}

abstract class PlayerUsuablePowerSuit extends PowerSuit {
  const PlayerUsuablePowerSuit({
    String uniqueName,
    String name,
    String description,
    String type,
    String imageName,
    String category,
    String productCategory,
    bool tradable,
    List<Component> components,
    int masteryReq,
    int buildPrice,
    int buildTime,
    int skipBuildTimePrice,
    int buildQuantity,
    bool consumeOnBuild,
    int health,
    int shield,
    int armor,
    int power,
    List<String> polarities,
    this.sprintSpeed,
    this.abilities,
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
          buildQuantity: buildQuantity,
          buildTime: buildTime,
          skipBuildTimePrice: skipBuildTimePrice,
          consumeOnBuild: consumeOnBuild,
          patchlogs: patchlogs,
          wikiaThumbnail: wikiaThumbnail,
          wikiaUrl: wikiaUrl,
          health: health,
          shield: shield,
          armor: armor,
          power: power,
          polarities: polarities,
        );

  final double sprintSpeed;
  final List<Ability> abilities;

  @override
  List<Object> get props {
    return super.props..addAll([sprintSpeed, abilities]);
  }
}

class Ability extends Equatable {
  const Ability({this.name, this.description});

  final String name, description;

  @override
  List<Object> get props => [name, description];
}

class Warframe extends PlayerUsuablePowerSuit {
  const Warframe({
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
    this.aura,
    int health,
    int shield,
    int armor,
    int power,
    double sprintSpeed,
    this.stamina,
    this.passiveDescription,
    List<Ability> abilities,
    List<String> polarities,
    this.sex,
    this.introduced,
    this.color,
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
          health: health,
          armor: armor,
          shield: shield,
          power: power,
          abilities: abilities,
          sprintSpeed: sprintSpeed,
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

  final String aura;
  final int stamina;
  final String passiveDescription, introduced, sex;
  final int color;

  @override
  List<Object> get props {
    return super.props
      ..addAll([aura, passiveDescription, introduced, sex, color]);
  }
}

class HeavyPowerSuit extends PlayerUsuablePowerSuit {
  const HeavyPowerSuit({
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
    int health,
    int shield,
    int armor,
    int power,
    List<String> polarities,
    List<Ability> abilities,
    double sprintSpeed,
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
          health: health,
          armor: armor,
          shield: shield,
          power: power,
          polarities: polarities,
          abilities: abilities,
          sprintSpeed: sprintSpeed,
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
}

class Companion extends PowerSuit {
  const Companion({
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
    int health,
    int shield,
    int armor,
    int power,
    List<String> polarities,
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
}
