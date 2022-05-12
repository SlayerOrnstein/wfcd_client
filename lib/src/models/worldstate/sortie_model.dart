import 'package:json_annotation/json_annotation.dart';

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
    super.factionKey,
    required this.variants,
  }) : super(
          variants: variants,
        );

  factory SortieModel.fromJson(Map<String, dynamic> json) {
    return _$SortieModelFromJson(json);
  }

  @override
  final List<VariantModel> variants;

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
