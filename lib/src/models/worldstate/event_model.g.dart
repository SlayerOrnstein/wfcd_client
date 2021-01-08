// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventModel _$EventModelFromJson(Map json) {
  return $checkedNew('EventModel', json, () {
    final val = EventModel(
      id: $checkedConvert(json, 'id', (v) => v as String),
      activation: $checkedConvert(
          json, 'activation', (v) => DateTime.parse(v as String)),
      expiry:
          $checkedConvert(json, 'expiry', (v) => DateTime.parse(v as String)),
      faction: $checkedConvert(json, 'faction', (v) => v as String),
      affiliatedWith:
          $checkedConvert(json, 'affiliatedWith', (v) => v as String?),
      description: $checkedConvert(json, 'description', (v) => v as String),
      victimNode: $checkedConvert(json, 'victimNode', (v) => v as String?),
      node: $checkedConvert(json, 'node', (v) => v as String),
      tooltip: $checkedConvert(json, 'tooltip', (v) => v as String?),
      maximumScore: $checkedConvert(json, 'maximumScore', (v) => v as int),
      currentScore: $checkedConvert(json, 'currentScore', (v) => v as int),
      health: $checkedConvert(json, 'health', (v) => v as num?),
      rewards: $checkedConvert(
          json,
          'rewards',
          (v) => (v as List<dynamic>)
              .map((e) =>
                  RewardModel.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList()),
      interimSteps: $checkedConvert(
          json,
          'interimSteps',
          (v) => (v as List<dynamic>?)
              ?.map((e) => InterimStepModel.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList()),
      jobs: $checkedConvert(
          json,
          'jobs',
          (v) => (v as List<dynamic>?)
              ?.map(
                  (e) => JobModel.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList()),
    );
    return val;
  });
}

Map<String, dynamic> _$EventModelToJson(EventModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'faction': instance.faction,
      'description': instance.description,
      'node': instance.node,
      'affiliatedWith': instance.affiliatedWith,
      'victimNode': instance.victimNode,
      'tooltip': instance.tooltip,
      'health': instance.health,
      'currentScore': instance.currentScore,
      'maximumScore': instance.maximumScore,
      'rewards': instance.rewards.map((e) => e.toJson()).toList(),
      'interimSteps': instance.interimSteps?.map((e) => e.toJson()).toList(),
      'jobs': instance.jobs?.map((e) => e.toJson()).toList(),
    };

InterimStepModel _$InterimStepModelFromJson(Map json) {
  return $checkedNew('InterimStepModel', json, () {
    final val = InterimStepModel(
      goal: $checkedConvert(json, 'goal', (v) => v as int),
      reward: $checkedConvert(json, 'reward',
          (v) => RewardModel.fromJson(Map<String, dynamic>.from(v as Map))),
    );
    return val;
  });
}

Map<String, dynamic> _$InterimStepModelToJson(InterimStepModel instance) =>
    <String, dynamic>{
      'goal': instance.goal,
      'reward': instance.reward.toJson(),
    };
