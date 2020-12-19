import 'package:json_annotation/json_annotation.dart';

import '../../entities/worldstate/invasion.dart';
import 'reward_model.dart';

part 'invasion_model.g.dart';

@JsonSerializable()
class InvasionModel extends Invasion {
  const InvasionModel({
    String id,
    DateTime activation,
    DateTime expiry,
    String node,
    String desc,
    String attackingFaction,
    String defendingFaction,
    this.attacker,
    this.defender,
    String eta,
    bool vsInfestation,
    bool completed,
    double completion,
    int count,
  }) : super(
          id: id,
          activation: activation,
          expiry: expiry,
          node: node,
          desc: desc,
          attackingFaction: attackingFaction,
          defendingFaction: defendingFaction,
          attacker: attacker,
          defender: defender,
          eta: eta,
          vsInfestation: vsInfestation,
          completed: completed,
          completion: completion,
          count: count,
        );

  factory InvasionModel.fromJson(Map<String, dynamic> json) {
    return _$InvasionModelFromJson(json);
  }

  @override
  final FactionModel attacker, defender;

  Map<String, dynamic> toJson() => _$InvasionModelToJson(this);
}

@JsonSerializable()
class FactionModel extends Faction {
  const FactionModel({this.reward, String faction, String factionKey})
      : super(reward: reward, faction: faction, factionKey: factionKey);

  factory FactionModel.fromJson(Map<String, dynamic> json) {
    return _$FactionModelFromJson(json);
  }

  @override
  final RewardModel reward;

  Map<String, dynamic> toJson() => _$FactionModelToJson(this);
}
