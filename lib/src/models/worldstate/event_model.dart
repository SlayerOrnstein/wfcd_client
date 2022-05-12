import 'package:json_annotation/json_annotation.dart';

import '../../entities/worldstate/event.dart';
import 'job_model.dart';
import 'reward_model.dart';

part 'event_model.g.dart';

@JsonSerializable()
class EventModel extends Event {
  const EventModel({
    required super.id,
    required super.activation,
    required super.expiry,
    super.faction,
    super.affiliatedWith,
    required super.description,
    super.victimNode,
    super.node,
    super.tooltip,
    super.maximumScore,
    super.currentScore,
    super.health,
    required this.rewards,
    this.interimSteps,
    this.jobs,
  }) : super(
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
  const InterimStepModel({required super.goal, required this.reward})
      : super(reward: reward);

  factory InterimStepModel.fromJson(Map<String, dynamic> json) {
    return _$InterimStepModelFromJson(json);
  }

  @override
  final RewardModel reward;

  Map<String, dynamic> toJson() => _$InterimStepModelToJson(this);
}
