import 'package:json_annotation/json_annotation.dart';

import '../../entities/worldstate/event.dart';
import 'job_model.dart';
import 'reward_model.dart';

part 'event_model.g.dart';

@JsonSerializable()
class EventModel extends Event {
  const EventModel({
    required String id,
    required DateTime activation,
    required DateTime expiry,
    String? faction,
    String? affiliatedWith,
    required String description,
    String? victimNode,
    String? node,
    String? tooltip,
    int? maximumScore,
    int? currentScore,
    num? health,
    required this.rewards,
    this.interimSteps,
    this.jobs,
  }) : super(
          id: id,
          activation: activation,
          expiry: expiry,
          faction: faction,
          affiliatedWith: affiliatedWith,
          description: description,
          victimNode: victimNode,
          node: node,
          tooltip: tooltip,
          maximumScore: maximumScore,
          currentScore: currentScore,
          health: health,
          rewards: rewards,
        );

  factory EventModel.fromJson(Map<String, dynamic> json) {
    return _$EventModelFromJson(json);
  }

  @override
  final List<RewardModel> rewards;

  @override
  final List<InterimStepModel>? interimSteps;

  @override
  final List<JobModel>? jobs;

  Map<String, dynamic> toJson() => _$EventModelToJson(this);
}

@JsonSerializable()
class InterimStepModel extends InterimStep {
  const InterimStepModel({required int goal, required this.reward})
      : super(goal: goal, reward: reward);

  factory InterimStepModel.fromJson(Map<String, dynamic> json) {
    return _$InterimStepModelFromJson(json);
  }

  @override
  final RewardModel reward;

  Map<String, dynamic> toJson() => _$InterimStepModelToJson(this);
}
