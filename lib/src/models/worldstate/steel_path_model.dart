import 'package:json_annotation/json_annotation.dart';

import '../../../entities.dart';

part 'steel_path_model.g.dart';

@JsonSerializable()
class SteelPathModel extends SteelPath {
  const SteelPathModel({
    required DateTime activation,
    required DateTime expiry,
    required this.currentReward,
    required this.rotation,
  }) : super(
          activation: activation,
          expiry: expiry,
          currentReward: currentReward,
          rotation: rotation,
        );

  factory SteelPathModel.fromJson(Map<String, dynamic> json) {
    return _$SteelPathModelFromJson(json);
  }

  @override
  final SteelPathRewardModel currentReward;

  @override
  final List<SteelPathRewardModel> rotation;

  Map<String, dynamic> toJson() => _$SteelPathModelToJson(this);
}

@JsonSerializable()
class SteelPathRewardModel extends SteelPathReward {
  SteelPathRewardModel({required String name, required int cost})
      : super(name: name, cost: cost);

  factory SteelPathRewardModel.fromJson(Map<String, dynamic> json) {
    return _$SteelPathRewardModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SteelPathRewardModelToJson(this);
}
