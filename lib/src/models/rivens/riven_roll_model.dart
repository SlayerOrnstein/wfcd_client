import 'package:json_annotation/json_annotation.dart';

import '../../entities/rivens/riven_roll.dart';

part 'riven_roll_model.g.dart';

@JsonSerializable()
class RivenRollModel extends RivenRoll {
  const RivenRollModel({
    required super.itemType,
    required super.compatibility,
    required super.rerolled,
    required super.avg,
    required super.stddev,
    required super.median,
    required super.min,
    required super.max,
    required super.pop,
  });

  factory RivenRollModel.fromJson(Map<String, dynamic> json) {
    return _$RivenRollModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RivenRollModelToJson(this);
}
