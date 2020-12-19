import 'package:equatable/equatable.dart';

import 'abstract_item.dart';
import 'component.dart';
import 'patch_log.dart';

class Enemy extends Item {
  const Enemy({
    String uniqueName,
    String name,
    String description,
    String type,
    String imageName,
    String category,
    bool tradable,
    this.health,
    this.shield,
    this.armor,
    this.regionBits,
    this.resistances,
    List<Patchlog> patchlogs,
    this.drops,
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
  final List<Drop> drops;
  final List<Resistances> resistances;

  @override
  List<Object> get props {
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
    this.amount,
    this.type,
    this.affectors,
  });

  final int amount;
  final String type;
  final List<Affectors> affectors;

  @override
  List<Object> get props => [amount, type, affectors];
}

class Affectors extends Equatable {
  const Affectors({this.element, this.modifier});

  final String element;
  final double modifier;

  @override
  List<Object> get props => [element, modifier];
}
