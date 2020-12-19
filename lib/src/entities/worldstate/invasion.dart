import 'package:equatable/equatable.dart';

import '../../../objects.dart';

import 'reward.dart';

class Invasion extends WorldstateObject {
  const Invasion({
    String id,
    DateTime activation,
    DateTime expiry,
    this.node,
    this.desc,
    this.attackingFaction,
    this.defendingFaction,
    this.attacker,
    this.defender,
    this.eta,
    this.vsInfestation,
    this.completed,
    this.completion,
    this.count,
  }) : super(id: id, activation: activation, expiry: expiry);

  final String node, desc, attackingFaction, defendingFaction, eta;
  final bool vsInfestation, completed;
  final num completion, count;
  final Faction attacker, defender;

  /// shorthand for [attacker.reward]
  Reward get attackerReward => attacker.reward;

  /// shorthand for [defender.reward]
  Reward get defenderReward => defender.reward;

  @override
  List<Object> get props {
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
  const Faction({this.reward, this.faction, this.factionKey});

  final Reward reward;
  final String faction, factionKey;

  @override
  List<Object> get props => [reward, faction, factionKey];
}
