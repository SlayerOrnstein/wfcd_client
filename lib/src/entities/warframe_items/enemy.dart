import 'package:equatable/equatable.dart';

import 'abstract_item.dart';

class Enemy extends Item {
  const Enemy({
    required super.uniqueName,
    required super.name,
    required String super.description,
    required super.type,
    required String super.imageName,
    required super.category,
    required super.tradable,
    required this.health,
    required this.shield,
    required this.armor,
    required this.regionBits,
    required this.resistances,
    super.patchlogs,
    super.drops,
  });

  final int health, shield, armor;
  final int regionBits;
  final List<Resistances> resistances;

  @override
  List<Object?> get props {
    return super.props
      ..addAll([
        health,
        shield,
        armor,
        regionBits,
        drops,
        resistances,
      ]);
  }
}

class Resistances extends Equatable {
  const Resistances({
    required this.amount,
    required this.type,
    required this.affectors,
  });

  final int amount;
  final String type;
  final List<Affectors> affectors;

  @override
  List<Object?> get props => [amount, type, affectors];
}

class Affectors extends Equatable {
  const Affectors({required this.element, required this.modifier});

  final String element;
  final double modifier;

  @override
  List<Object?> get props => [element, modifier];
}
