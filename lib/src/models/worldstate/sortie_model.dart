import 'package:json_annotation/json_annotation.dart';

import '../../../models.dart';
import '../../entities/worldstate/sortie.dart';

part 'sortie_model.g.dart';

@JsonSerializable()
class SortieModel extends Sortie {
  const SortieModel({
    required super.id,
    required super.activation,
    required super.expiry,
    required super.boss,
    required super.faction,
    required super.factionKey,
    required this.variants,
    required this.missions,
  }) : super(variants: variants, missions: missions);

  factory SortieModel.fromJson(Map<String, dynamic> json) {
    return _$SortieModelFromJson(json);
  }

  @override
  final List<VariantModel> variants;

  @override
  final List<MissionModel> missions;

  Map<String, dynamic> toJson() => _$SortieModelToJson(this);
}

@JsonSerializable()
class VariantModel extends Variant {
  const VariantModel({
    required super.missionType,
    required super.modifier,
    required super.modifierDescription,
    required super.node,
  });

  factory VariantModel.fromJson(Map<String, dynamic> json) {
    return _$VariantModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VariantModelToJson(this);
}
