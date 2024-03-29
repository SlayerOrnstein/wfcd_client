import 'package:equatable/equatable.dart';

import '../../../objects.dart';
import 'job.dart';
import 'reward.dart';

class Event extends WorldstateObject {
  const Event({
    required String id,
    required DateTime activation,
    required DateTime expiry,
    this.faction,
    this.affiliatedWith,
    required this.description,
    this.victimNode,
    required this.node,
    this.tooltip,
    required this.maximumScore,
    required this.currentScore,
    this.health,
    required this.rewards,
    this.interimSteps,
    this.jobs,
  }) : super(id: id, activation: activation, expiry: expiry);

  final String? faction, node;
  final String description;
  final String? affiliatedWith, victimNode, tooltip;
  final num? health;
  final int? currentScore, maximumScore;
  final List<Reward> rewards;
  final List<InterimStep>? interimSteps;
  final List<Job>? jobs;

  double? get eventHealth {
    if (health != null) return health!.toDouble();

    if (currentScore != null && maximumScore != null) {
      return 100 - currentScore! / maximumScore! * 100;
    }

    return null;
  }

  List<Reward> get eventRewards {
    final rewards = List<Reward>.from(this.rewards);

    return rewards
      ..addAll(interimSteps?.map<Reward>((i) => i.reward) ?? [])
      ..removeWhere((r) => r.itemString.isEmpty);
  }

  @override
  List<Object?> get props {
    return super.props
      ..addAll([
        faction,
        affiliatedWith,
        description,
        victimNode,
        node,
        tooltip,
        health,
        currentScore,
        maximumScore,
        rewards,
        interimSteps,
        jobs
      ]);
  }
}

class InterimStep extends Equatable {
  const InterimStep({required this.goal, required this.reward});

  final int goal;
  final Reward reward;

  @override
  List<Object?> get props => [goal, reward];
}
