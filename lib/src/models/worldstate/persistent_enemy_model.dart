import 'package:json_annotation/json_annotation.dart';

import '../../entities/worldstate/persistent_enemy.dart';

part 'persistent_enemy_model.g.dart';

@JsonSerializable()
class PersistentEnemyModel extends PersistentEnemy {
  const PersistentEnemyModel({
    required super.id,
    required super.activation,
    required super.expiry,
    required super.agentType,
    required super.locationTag,
    required super.lastDiscoveredAt,
    required super.lastDiscoveredTime,
    required super.fleeDamage,
    required super.rank,
    required super.healthPercent,
    required super.isDiscovered,
    required super.isUsingTicketing,
  });

  factory PersistentEnemyModel.fromJson(Map<String, dynamic> json) {
    return _$PersistentEnemyModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PersistentEnemyModelToJson(this);
}
