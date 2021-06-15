import 'package:equatable/equatable.dart';

import 'abstract_item.dart';

class Component extends Item {
  const Component({
    required String uniqueName,
    required String name,
    required String description,
    required this.itemCount,
    required String imageName,
    required bool tradable,
    String? type,
    String? category,
    List<Drop>? drops,
  }) : super(
          uniqueName: uniqueName,
          name: name,
          description: description,
          imageName: imageName,
          tradable: tradable,
          drops: drops,
          type: type ?? '',
          category: category ?? '',
        );

  final int itemCount;

  @override
  List<Object?> get props => super.props..addAll([itemCount, drops]);
}

class Drop extends Equatable {
  const Drop({
    required this.location,
    required this.type,
    required this.rarity,
    this.chance,
    this.rotation,
  });

  final String location, type, rarity;
  final String? rotation;
  final double? chance;

  @override
  List<Object?> get props => [location, type, rarity, chance, rotation];
}
