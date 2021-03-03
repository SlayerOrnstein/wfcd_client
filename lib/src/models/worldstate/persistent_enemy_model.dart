import 'package:json_annotation/json_annotation.dart';

import '../../entities/worldstate/persistent_enemy.dart';

part 'persistent_enemy_model.g.dart';

@JsonSerializable()
class PersistentEnemyModel extends PersistentEnemy {
  const PersistentEnemyModel({
    required String id,
    required DateTime activation,
    required DateTime expiry,
    required String agentType,
    required String locationTag,
    required String lastDiscoveredAt,
    required DateTime lastDiscoveredTime,
    required int fleeDamage,
    required int rank,
    required double healthPercent,
    required bool isDiscovered,
    required bool isUsingTicketing,
  }) : super(
          id: id,
          activation: activation,
          expiry: expiry,
          agentType: agentType,
          locationTag: locationTag,
          lastDiscoveredAt: lastDiscoveredAt,
          lastDiscoveredTime: lastDiscoveredTime,
          fleeDamage: fleeDamage,
          rank: rank,
          healthPercent: healthPercent,
          isDiscovered: isDiscovered,
          isUsingTicketing: isUsingTicketing,
        );

  factory PersistentEnemyModel.fromJson(Map<String, dynamic> json) {
    return _$PersistentEnemyModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PersistentEnemyModelToJson(this);
}
