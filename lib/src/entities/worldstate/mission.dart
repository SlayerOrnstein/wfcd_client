import 'package:equatable/equatable.dart';

import 'reward.dart';

class Mission extends Equatable {
  const Mission({
    required this.node,
    required this.type,
    this.faction,
    this.minEnemyLevel,
    this.maxEnemyLevel,
    this.maxWaveNum,
    this.nightmare,
    this.archwingRequired,
    this.reward,
    this.exclusiveWeapon,
  });

  final String node, type;
  final String? faction;
  final String? exclusiveWeapon;
  final int? minEnemyLevel, maxEnemyLevel, maxWaveNum;
  final bool? nightmare, archwingRequired;

  final Reward? reward;

  @override
  List<Object?> get props {
    return [
      node,
      type,
      minEnemyLevel,
      maxEnemyLevel,
      maxWaveNum,
      nightmare,
      archwingRequired,
      reward
    ];
  }
}
