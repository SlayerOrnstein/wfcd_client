import 'package:json_annotation/json_annotation.dart';

import '../../entities/worldstate/invasion.dart';
import 'reward_model.dart';

part 'invasion_model.g.dart';

@JsonSerializable()
class InvasionModel extends Invasion {
  const InvasionModel({
    required String id,
    required DateTime activation,
    required String node,
    required String nodeKey,
    required String desc,
    required String attackingFaction,
    required String defendingFaction,
    required this.attacker,
    required this.defender,
    required String eta,
    required bool vsInfestation,
    required bool completed,
    required double completion,
    required int count,
  }) : super(
          id: id,
          activation: activation,
          node: node,
          nodeKey: nodeKey,
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
  const FactionModel({
    required this.reward,
    required String faction,
    required String factionKey,
  }) : super(reward: reward, faction: faction, factionKey: factionKey);

  factory FactionModel.fromJson(Map<String, dynamic> json) {
    return _$FactionModelFromJson(json);
  }

  @override
  final RewardModel reward;

  Map<String, dynamic> toJson() => _$FactionModelToJson(this);
}
