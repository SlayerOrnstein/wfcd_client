import 'package:json_annotation/json_annotation.dart';

import '../../entities/warframe_items/enemy.dart';
import 'component_model.dart';
import 'patch_log_model.dart';

part 'enemy_model.g.dart';

@JsonSerializable()
class EnemyModel extends Enemy {
  const EnemyModel({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.imageName,
    required super.category,
    required super.tradable,
    required super.health,
    required super.shield,
    required super.armor,
    required super.regionBits,
    required this.resistances,
    this.patchlogs,
    this.drops,
  }) : super(
          patchlogs: patchlogs,
          resistances: resistances,
        );

  factory EnemyModel.fromJson(Map<String, dynamic> json) {
    return _$EnemyModelFromJson(json);
  }

  @override
  final List<ResistancesModel> resistances;

  @override
  final List<DropModel>? drops;

  @override
  final List<PatchlogModel>? patchlogs;

  Map<String, dynamic> toJson() => _$EnemyModelToJson(this);
}

@JsonSerializable()
class ResistancesModel extends Resistances {
  const ResistancesModel({
    required super.amount,
    required super.type,
    required this.affectors,
  }) : super(affectors: affectors);

  factory ResistancesModel.fromJson(Map<String, dynamic> json) {
    return _$ResistancesModelFromJson(json);
  }

  @override
  final List<AffectorsModel> affectors;

  Map<String, dynamic> toJson() => _$ResistancesModelToJson(this);
}

@JsonSerializable()
class AffectorsModel extends Affectors {
  const AffectorsModel({required super.element, required super.modifier});

  factory AffectorsModel.fromJson(Map<String, dynamic> json) {
    return _$AffectorsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AffectorsModelToJson(this);
}
