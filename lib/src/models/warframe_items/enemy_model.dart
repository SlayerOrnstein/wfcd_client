import 'package:json_annotation/json_annotation.dart';

import '../../entities/warframe_items/enemy.dart';
import 'component_model.dart';
import 'patch_log_model.dart';

part 'enemy_model.g.dart';

@JsonSerializable()
class EnemyModel extends Enemy {
  const EnemyModel({
    required String uniqueName,
    required String name,
    required String description,
    required String type,
    required String imageName,
    required String category,
    required bool tradable,
    required int health,
    required int shield,
    required int armor,
    required int regionBits,
    required this.resistances,
    this.patchlogs,
    this.drops,
  }) : super(
          uniqueName: uniqueName,
          name: name,
          description: description,
          imageName: imageName,
          type: type,
          category: category,
          tradable: tradable,
          patchlogs: patchlogs,
          health: health,
          shield: shield,
          armor: armor,
          regionBits: regionBits,
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
    required int amount,
    required String type,
    required this.affectors,
  }) : super(amount: amount, type: type, affectors: affectors);

  factory ResistancesModel.fromJson(Map<String, dynamic> json) {
    return _$ResistancesModelFromJson(json);
  }

  @override
  final List<AffectorsModel> affectors;

  Map<String, dynamic> toJson() => _$ResistancesModelToJson(this);
}

@JsonSerializable()
class AffectorsModel extends Affectors {
  const AffectorsModel({required String element, required double modifier})
      : super(element: element, modifier: modifier);

  factory AffectorsModel.fromJson(Map<String, dynamic> json) {
    return _$AffectorsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AffectorsModelToJson(this);
}
