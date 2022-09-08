import 'package:json_annotation/json_annotation.dart';

import '../../entities/worldstate/mission.dart';
import 'reward_model.dart';

part 'mission_model.g.dart';

@JsonSerializable()
class MissionModel extends Mission {
  const MissionModel({
    required super.node,
    required super.type,
    super.faction,
    super.minEnemyLevel,
    super.maxEnemyLevel,
    super.maxWaveNum,
    super.nightmare,
    super.archwingRequired,
    this.reward,
    super.exclusiveWeapon,
  }) : super(
          reward: reward,
        );

  factory MissionModel.fromJson(Map<String, dynamic> json) {
    return _$MissionModelFromJson(json);
  }

  @override
  final RewardModel? reward;

  Map<String, dynamic> toJson() => _$MissionModelToJson(this);
}
