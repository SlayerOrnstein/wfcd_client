import 'package:json_annotation/json_annotation.dart';

import '../../entities/worldstate/fissure.dart';

part 'fissure_model.g.dart';

@JsonSerializable()
class VoidFissureModel extends VoidFissure {
  const VoidFissureModel({
    required super.id,
    required super.activation,
    required super.expiry,
    required super.node,
    required super.missionType,
    required super.enemy,
    required super.tier,
    required super.tierNum,
    required super.active,
    required super.expired,
    bool? isStorm,
  }) : super(
          isStorm: isStorm ?? false,
        );

  factory VoidFissureModel.fromJson(Map<String, dynamic> json) {
    return _$VoidFissureModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VoidFissureModelToJson(this);
}
