import 'package:json_annotation/json_annotation.dart';

import '../../entities/worldstate/sortie.dart';

part 'sortie_model.g.dart';

@JsonSerializable()
class SortieModel extends Sortie {
  const SortieModel({
    required String id,
    required DateTime activation,
    required DateTime expiry,
    required String boss,
    required String faction,
    required this.variants,
  }) : super(
          id: id,
          activation: activation,
          expiry: expiry,
          boss: boss,
          faction: faction,
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
    required String missionType,
    required String modifier,
    required String modifierDescription,
    required String node,
  }) : super(
          missionType: missionType,
          modifier: modifier,
          modifierDescription: modifierDescription,
          node: node,
        );

  factory VariantModel.fromJson(Map<String, dynamic> json) {
    return _$VariantModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VariantModelToJson(this);
}
