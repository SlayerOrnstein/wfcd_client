import 'package:equatable/equatable.dart';

import 'abstract_item.dart';
import 'component.dart';
import 'patch_log.dart';

abstract class PowerSuit extends FoundryItem {
  const PowerSuit({
    required String uniqueName,
    required String name,
    required String description,
    required String type,
    required String imageName,
    required String category,
    required String productCategory,
    required bool tradable,
    List<Component>? components,
    int? masteryReq,
    int? buildPrice,
    int? buildTime,
    int? skipBuildTimePrice,
    int? buildQuantity,
    bool? consumeOnBuild,
    required this.health,
    required this.shield,
    required this.armor,
    required this.power,
    this.polarities,
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
          buildQuantity: buildQuantity,
          buildTime: buildTime,
          skipBuildTimePrice: skipBuildTimePrice,
          consumeOnBuild: consumeOnBuild,
          patchlogs: patchlogs,
          wikiaThumbnail: wikiaThumbnail,
          wikiaUrl: wikiaUrl,
        );

  final int health, shield, armor, power;
  final List<String>? polarities;

  @override
  List<Object?> get props {
    return super.props..addAll([health, shield, armor, power, polarities]);
  }
}

abstract class PlayerUsuablePowerSuit extends PowerSuit {
  const PlayerUsuablePowerSuit({
    required String uniqueName,
    required String name,
    required String description,
    required String type,
    required String imageName,
    required String category,
    required String productCategory,
    required bool tradable,
    required List<Component> components,
    required int masteryReq,
    required int buildPrice,
    required int buildTime,
    required int skipBuildTimePrice,
    required int buildQuantity,
    required bool consumeOnBuild,
    required int health,
    required int shield,
    required int armor,
    required int power,
    List<String>? polarities,
    required this.sprintSpeed,
    required this.abilities,
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
  List<Object?> get props {
    return super.props..addAll([sprintSpeed, abilities]);
  }
}

class Ability extends Equatable {
  const Ability({required this.name, required this.description});

  final String name, description;

  @override
  List<Object> get props => [name, description];
}

class Warframe extends PlayerUsuablePowerSuit {
  const Warframe({
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
    this.aura,
    required int health,
    required int shield,
    required int armor,
    required int power,
    required double sprintSpeed,
    required this.stamina,
    required this.passiveDescription,
    required List<Ability> abilities,
    required List<String> polarities,
    required this.sex,
    required this.introduced,
    required this.color,
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

  final String? aura;
  final int stamina;
  final String passiveDescription, sex;
  final Introduced introduced;
  final int color;

  @override
  List<Object?> get props {
    return super.props
      ..addAll([aura, passiveDescription, introduced, sex, color]);
  }
}

class Introduced extends Equatable {
  const Introduced({required this.name, required this.url, required this.date});

  final String name;
  final String url;
  final String date;

  @override
  List<Object?> get props => [name, url, date];
}

class HeavyPowerSuit extends PlayerUsuablePowerSuit {
  const HeavyPowerSuit({
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
    required int health,
    required int shield,
    required int armor,
    required int power,
    List<String>? polarities,
    required List<Ability> abilities,
    required double sprintSpeed,
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
    required String uniqueName,
    required String name,
    required String description,
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
    List<Component>? components,
    required int health,
    required int shield,
    required int armor,
    required int power,
    List<String>? polarities,
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
