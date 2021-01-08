import 'package:equatable/equatable.dart';

import 'abstract_item.dart';
import 'component.dart';
import 'patch_log.dart';

class Enemy extends Item {
  const Enemy({
    required String uniqueName,
    required String name,
    required String description,
    required String type,
    required String imageName,
    required String category,
    required bool tradable,
    required this.health,
    required this.shield,
    required this.armor,
    required this.regionBits,
    required this.resistances,
    List<Patchlog>? patchlogs,
    List<Drop>? drops,
  }) : super(
          uniqueName: uniqueName,
          name: name,
          description: description,
          imageName: imageName,
          type: type,
          category: category,
          tradable: tradable,
          patchlogs: patchlogs,
        );

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
