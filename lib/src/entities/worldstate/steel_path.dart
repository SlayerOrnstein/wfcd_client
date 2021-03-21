import 'package:equatable/equatable.dart';

import '../../../objects.dart';

class SteelPath extends WorldstateObject {
  const SteelPath({
    required DateTime activation,
    required DateTime expiry,
    required this.currentReward,
    required this.rotation,
  }) : super(activation: activation, expiry: expiry);

  final SteelPathReward currentReward;
  final List<SteelPathReward> rotation;

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
