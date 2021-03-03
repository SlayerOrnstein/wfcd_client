import 'package:json_annotation/json_annotation.dart';

import '../../entities/worldstate/fissure.dart';

part 'fissure_model.g.dart';

@JsonSerializable()
class VoidFissureModel extends VoidFissure {
  const VoidFissureModel({
    required String id,
    required DateTime activation,
    required DateTime expiry,
    required String node,
    required String missionType,
    required String enemy,
    required String tier,
    required int tierNum,
    required bool active,
    required bool expired,
  }) : super(
          id: id,
          activation: activation,
          expiry: expiry,
          node: node,
          missionType: missionType,
          enemy: enemy,
          tier: tier,
          tierNum: tierNum,
          active: active,
          expired: expired,
        );

  factory VoidFissureModel.fromJson(Map<String, dynamic> json) {
    return _$VoidFissureModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VoidFissureModelToJson(this);
}
