import 'package:json_annotation/json_annotation.dart';

import '../../../entities.dart';
import 'patch_log_model.dart';

part 'sol_node_model.g.dart';

@JsonSerializable()
class SolNodeModel extends SolNode {
  const SolNodeModel({
    required String uniqueName,
    required String name,
    required String description,
    required String type,
    required String category,
    required bool tradable,
    required int systemIndex,
    required String systemName,
    required int masterReq,
    required int missionIndex,
    required int factionIndex,
    required int minEnemyLevel,
    required int maxEnemyLevel,
    this.patchlogs,
  }) : super(
          uniqueName: uniqueName,
          name: name,
          description: description,
          type: type,
          category: category,
          tradable: tradable,
          patchlogs: patchlogs,
          systemIndex: systemIndex,
          systemName: systemName,
          masterReq: masterReq,
          missionIndex: missionIndex,
          factionIndex: factionIndex,
          minEnemyLevel: minEnemyLevel,
          maxEnemyLevel: maxEnemyLevel,
        );

  factory SolNodeModel.fromJson(Map<String, dynamic> json) {
    return _$SolNodeModelFromJson(json);
  }

  @override
  final List<PatchlogModel>? patchlogs;

  Map<String, dynamic> toJson() => _$SolNodeModelToJson(this);
}
