import 'package:equatable/equatable.dart';

import 'abstract_item.dart';

class Component extends Item {
  const Component({
    required super.uniqueName,
    required super.name,
    required String super.description,
    required this.itemCount,
    required String super.imageName,
    required super.tradable,
    String? type,
    String? category,
    super.drops,
  }) : super(
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
    this.rarity,
    this.chance,
    this.rotation,
  });

  final String location, type;
  final String? rarity;
  final String? rotation;
  final double? chance;

  @override
  List<Object?> get props => [location, type, rarity, chance, rotation];
}
