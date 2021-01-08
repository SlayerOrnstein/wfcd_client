import 'package:equatable/equatable.dart';

class Reward extends Equatable {
  const Reward({
    required this.itemString,
    required this.thumbnail,
    required this.asString,
    required this.credits,
    required this.countedItems,
  });

  final String itemString, thumbnail, asString;
  final int credits;
  final List<CountedItem> countedItems;

  @override
  List<Object> get props {
    return [
      itemString,
      thumbnail,
      asString,
      credits,
      countedItems,
    ];
  }
}

class CountedItem extends Equatable {
  const CountedItem({required this.count, required this.type});

  final num count;
  final String type;

  @override
  List<Object> get props => [count, type];
}
