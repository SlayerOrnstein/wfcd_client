import 'package:equatable/equatable.dart';

import 'abstract_item.dart';

class Component extends Item {
  const Component({
    String uniqueName,
    String name,
    String description,
    this.itemCount,
    String imageName,
    bool tradable,
    this.drops,
  }) : super(
          uniqueName: uniqueName,
          name: name,
          description: description,
          imageName: imageName,
          tradable: tradable,
        );

  final num itemCount;
  final List<Drop> drops;

  @override
  List<Object> get props => super.props..addAll([itemCount, drops]);
}

class Drop extends Equatable {
  const Drop({
    this.location,
    this.type,
    this.rarity,
    this.chance,
    this.rotation,
  });

  final String location, type, rarity;
  final String rotation;
  final double chance;

  @override
  List<Object> get props => [location, type, rarity, chance, rotation];
}
