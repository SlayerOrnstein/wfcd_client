import 'package:equatable/equatable.dart';

import '../../../objects.dart';

class SteelPath extends WorldstateObject {
  const SteelPath({
    required DateTime activation,
    required DateTime expiry,
    required this.currentReward,
    required this.rotation,
    required this.evergreens,
    required this.incursions,
  }) : super(activation: activation, expiry: expiry);

  final SteelPathReward currentReward;
  final List<SteelPathReward> rotation;
  final List<SteelPathReward> evergreens;
  final Incursions incursions;

  @override
  List<Object?> get props => super.props..addAll([currentReward, rotation]);
}

class SteelPathReward extends Equatable {
  const SteelPathReward({required this.name, required this.cost});

  final String name;
  final int cost;

  @override
  List<Object?> get props => [name, cost];
}

class Incursions extends WorldstateObject {
  const Incursions({
    required super.id,
    required super.activation,
    required super.expiry,
  });
}
