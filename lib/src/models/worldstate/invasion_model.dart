import 'package:json_annotation/json_annotation.dart';

import '../../entities/worldstate/invasion.dart';
import 'reward_model.dart';

part 'invasion_model.g.dart';

@JsonSerializable()
class InvasionModel extends Invasion {
  const InvasionModel({
    required super.id,
    required super.activation,
    required super.node,
    required super.nodeKey,
    required super.desc,
    required super.attackingFaction,
    required super.defendingFaction,
    required this.attacker,
    required this.defender,
    required super.eta,
    required super.vsInfestation,
    required super.completed,
    required double super.completion,
    required int super.count,
  }) : super(
          attacker: attacker,
          defender: defender,
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
    required super.faction,
    required super.factionKey,
  }) : super(reward: reward);

  factory FactionModel.fromJson(Map<String, dynamic> json) {
    return _$FactionModelFromJson(json);
  }

  @override
  final RewardModel reward;

  Map<String, dynamic> toJson() => _$FactionModelToJson(this);
}
