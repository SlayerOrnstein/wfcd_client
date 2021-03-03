import 'package:equatable/equatable.dart';

class SlimDrop extends Equatable {
  const SlimDrop({
    required this.place,
    required this.item,
    required this.rarity,
    required this.dropChance,
  });

  final String place;
  final String item;
  final String rarity;
  final dynamic dropChance;

  num get chance {
    return dropChance is String
        ? num.parse(dropChance as String)
        : dropChance as num;
  }

  @override
  List<Object?> get props => [place, item, rarity, dropChance];
}
