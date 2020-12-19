import 'package:json_annotation/json_annotation.dart';

import '../../entities/worldstate/mission.dart';
import 'reward_model.dart';

part 'mission_model.g.dart';

@JsonSerializable()
class MissionModel extends Mission {
  const MissionModel({
    String node,
    String type,
    String faction,
    int minEnemyLevel,
    int maxEnemyLevel,
    int maxWaveNum,
    bool nightmare,
    bool archwingRequired,
    this.reward,
    String exclusiveWeapon,
  }) : super(
          node: node,
          type: type,
          faction: faction,
          minEnemyLevel: minEnemyLevel,
          maxEnemyLevel: maxEnemyLevel,
          maxWaveNum: maxWaveNum,
          nightmare: nightmare,
          archwingRequired: archwingRequired,
          exclusiveWeapon: exclusiveWeapon,
        );

  factory MissionModel.fromJson(Map<String, dynamic> json) {
    return _$MissionModelFromJson(json);
  }

  @override
  final RewardModel reward;

  Map<String, dynamic> toJson() => _$MissionModelToJson(this);
}
