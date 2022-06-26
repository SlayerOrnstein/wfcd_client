import 'package:json_annotation/json_annotation.dart';

import '../../../entities.dart';

part 'steel_path_model.g.dart';

@JsonSerializable()
class SteelPathModel extends SteelPath {
  const SteelPathModel({
    required super.activation,
    required super.expiry,
    required this.currentReward,
    required this.rotation,
    required this.evergreens,
    required this.incursions,
  }) : super(
          currentReward: currentReward,
          rotation: rotation,
          evergreens: evergreens,
          incursions: incursions,
        );

  factory SteelPathModel.fromJson(Map<String, dynamic> json) {
    return _$SteelPathModelFromJson(json);
  }

  @override
  final SteelPathRewardModel currentReward;

  @override
  final List<SteelPathRewardModel> rotation;

  @override
  final List<SteelPathRewardModel> evergreens;

  @override
  final IncursionsModel incursions;

  Map<String, dynamic> toJson() => _$SteelPathModelToJson(this);
}

@JsonSerializable()
class SteelPathRewardModel extends SteelPathReward {
  const SteelPathRewardModel({required super.name, required super.cost});

  factory SteelPathRewardModel.fromJson(Map<String, dynamic> json) {
    return _$SteelPathRewardModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SteelPathRewardModelToJson(this);
}

@JsonSerializable()
class IncursionsModel extends Incursions {
  const IncursionsModel({
    required super.id,
    required super.activation,
    required super.expiry,
  });

  factory IncursionsModel.fromJson(Map<dynamic, dynamic> json) {
    return _$IncursionsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$IncursionsModelToJson(this);
}
