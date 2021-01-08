import 'package:json_annotation/json_annotation.dart';

import '../../entities/worldstate/job.dart';

part 'job_model.g.dart';

@JsonSerializable()
class JobModel extends Job {
  const JobModel({
    String? type,
    required this.rewardpool,
    required List<int> enemyLevels,
    required List<int> standingStages,
  }) : super(
          rewardpool,
          type: type,
          enemyLevels: enemyLevels,
          standingStages: standingStages,
        );

  factory JobModel.fromJson(Map<String, dynamic> json) {
    return _$JobModelFromJson(json);
  }

  @JsonKey(name: 'rewardPool')
  final dynamic rewardpool;

  Map<String, dynamic> toJson() => _$JobModelToJson(this);
}
