import 'package:equatable/equatable.dart';

import 'abstract_item.dart';
import 'component.dart';

abstract class PowerSuit extends FoundryItem {
  const PowerSuit({
    required super.uniqueName,
    required super.name,
    required String super.description,
    required super.type,
    required super.imageName,
    required super.category,
    required String super.productCategory,
    super.tradable,
    super.components,
    super.masteryReq,
    super.buildPrice,
    super.buildTime,
    super.skipBuildTimePrice,
    super.buildQuantity,
    super.vaultDate,
    super.vaulted,
    super.consumeOnBuild,
    required this.health,
    required this.shield,
    required this.armor,
    required this.power,
    this.polarities,
    super.patchlogs,
    super.wikiaThumbnail,
    super.wikiaUrl,
  });

  final int health, shield, armor, power;
  final List<String>? polarities;

  @override
  List<Object?> get props {
    return super.props..addAll([health, shield, armor, power, polarities]);
  }
}

abstract class PlayerUsuablePowerSuit extends PowerSuit {
  const PlayerUsuablePowerSuit({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.imageName,
    required super.category,
    required super.productCategory,
    super.tradable,
    required List<Component> super.components,
    required int super.masteryReq,
    required int super.buildPrice,
    required int super.buildTime,
    required int super.skipBuildTimePrice,
    required int super.buildQuantity,
    required bool super.consumeOnBuild,
    required super.health,
    required super.shield,
    required super.armor,
    required super.power,
    super.polarities,
    required this.sprintSpeed,
    required this.abilities,
    super.vaultDate,
    super.vaulted,
    super.patchlogs,
    super.wikiaThumbnail,
    super.wikiaUrl,
  });

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
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.imageName,
    required super.category,
    required super.productCategory,
    super.tradable,
    required super.masteryReq,
    required super.buildPrice,
    required super.buildTime,
    required super.skipBuildTimePrice,
    required super.buildQuantity,
    required super.consumeOnBuild,
    required super.components,
    this.aura,
    required super.health,
    required super.shield,
    required super.armor,
    required super.power,
    required super.sprintSpeed,
    required this.stamina,
    required this.passiveDescription,
    required super.abilities,
    required List<String> super.polarities,
    required this.sex,
    required this.introduced,
    required this.color,
    super.vaultDate,
    super.vaulted,
    super.patchlogs,
    super.wikiaThumbnail,
    super.wikiaUrl,
  });

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
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.imageName,
    required super.category,
    required super.productCategory,
    super.tradable,
    required super.masteryReq,
    required super.buildPrice,
    required super.buildTime,
    required super.skipBuildTimePrice,
    required super.buildQuantity,
    required super.consumeOnBuild,
    required super.components,
    required super.health,
    required super.shield,
    required super.armor,
    required super.power,
    super.polarities,
    required super.abilities,
    required super.sprintSpeed,
    super.patchlogs,
    super.vaultDate,
    super.vaulted,
    super.wikiaThumbnail,
    super.wikiaUrl,
  });
}

class Companion extends PowerSuit {
  const Companion({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.imageName,
    required super.category,
    required super.productCategory,
    required super.tradable,
    super.masteryReq,
    super.buildPrice,
    super.buildTime,
    super.skipBuildTimePrice,
    super.buildQuantity,
    super.consumeOnBuild,
    super.components,
    required super.health,
    required super.shield,
    required super.armor,
    required super.power,
    super.polarities,
    super.patchlogs,
    super.wikiaThumbnail,
    super.wikiaUrl,
    super.vaultDate,
    super.vaulted,
  });
}
