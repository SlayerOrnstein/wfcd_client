import 'package:json_annotation/json_annotation.dart';

import '../../entities/rivens/riven_roll.dart';

part 'riven_roll_model.g.dart';

@JsonSerializable()
class RivenRollModel extends RivenRoll {
  const RivenRollModel({
    required String itemType,
    required String compatibility,
    required bool rerolled,
    required double avg,
    required double stddev,
    required double median,
    required int min,
    required int max,
    required int pop,
  }) : super(
          itemType: itemType,
          compatibility: compatibility,
          rerolled: rerolled,
          avg: avg,
          stddev: stddev,
          median: median,
          min: min,
          max: max,
          pop: pop,
        );

  factory RivenRollModel.fromJson(Map<String, dynamic> json) {
    return _$RivenRollModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RivenRollModelToJson(this);
}
