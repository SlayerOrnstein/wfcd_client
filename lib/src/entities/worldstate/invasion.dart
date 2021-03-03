import 'package:equatable/equatable.dart';

import '../../../objects.dart';

import 'reward.dart';

class Invasion extends WorldstateObject {
  const Invasion({
    required String id,
    required DateTime activation,
    required this.node,
    required this.nodeKey,
    required this.desc,
    required this.attackingFaction,
    required this.defendingFaction,
    required this.attacker,
    required this.defender,
    required this.eta,
    required this.vsInfestation,
    required this.completed,
    required this.completion,
    required this.count,
  }) : super(id: id, activation: activation);

  final String node, desc, attackingFaction, defendingFaction, eta, nodeKey;
  final bool vsInfestation, completed;
  final num completion, count;
  final Faction attacker, defender;

  /// shorthand for [Faction.reward]
  Reward get attackerReward => attacker.reward;

  /// shorthand for [Faction.reward]
  Reward get defenderReward => defender.reward;

  @override
  List<Object?> get props {
    return super.props
      ..addAll([
        node,
        desc,
        attackingFaction,
        defendingFaction,
        eta,
        vsInfestation,
        completed,
        completion,
        count,
      ]);
  }
}

class Faction extends Equatable {
  const Faction({
    required this.reward,
    required this.faction,
    required this.factionKey,
  });

  final Reward reward;
  final String faction, factionKey;

  @override
  List<Object> get props => [reward, faction, factionKey];
}
