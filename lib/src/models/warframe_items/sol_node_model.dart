import 'package:json_annotation/json_annotation.dart';

import '../../../entities.dart';
import 'patch_log_model.dart';

part 'sol_node_model.g.dart';

@JsonSerializable()
class SolNodeModel extends SolNode {
  const SolNodeModel({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.category,
    required super.tradable,
    required super.systemIndex,
    required super.systemName,
    required super.masterReq,
    required super.missionIndex,
    required super.factionIndex,
    required super.minEnemyLevel,
    required super.maxEnemyLevel,
    this.patchlogs,
  }) : super(
          patchlogs: patchlogs,
        );

  factory SolNodeModel.fromJson(Map<String, dynamic> json) {
    return _$SolNodeModelFromJson(json);
  }

  @override
  final List<PatchlogModel>? patchlogs;

  Map<String, dynamic> toJson() => _$SolNodeModelToJson(this);
}
