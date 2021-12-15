// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventModel _$EventModelFromJson(Map json) => $checkedCreate(
      'EventModel',
      json,
      ($checkedConvert) {
        final val = EventModel(
          id: $checkedConvert('id', (v) => v as String),
          activation:
              $checkedConvert('activation', (v) => DateTime.parse(v as String)),
          expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
          faction: $checkedConvert('faction', (v) => v as String?),
          affiliatedWith:
              $checkedConvert('affiliatedWith', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String),
          victimNode: $checkedConvert('victimNode', (v) => v as String?),
          node: $checkedConvert('node', (v) => v as String?),
          tooltip: $checkedConvert('tooltip', (v) => v as String?),
          maximumScore: $checkedConvert('maximumScore', (v) => v as int?),
          currentScore: $checkedConvert('currentScore', (v) => v as int?),
          health: $checkedConvert('health', (v) => v as num?),
          rewards: $checkedConvert(
              'rewards',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      RewardModel.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          interimSteps: $checkedConvert(
              'interimSteps',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => InterimStepModel.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
          jobs: $checkedConvert(
              'jobs',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      JobModel.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$EventModelToJson(EventModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'faction': instance.faction,
      'node': instance.node,
      'description': instance.description,
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

InterimStepModel _$InterimStepModelFromJson(Map json) => $checkedCreate(
      'InterimStepModel',
      json,
      ($checkedConvert) {
        final val = InterimStepModel(
          goal: $checkedConvert('goal', (v) => v as int),
          reward: $checkedConvert('reward',
              (v) => RewardModel.fromJson(Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$InterimStepModelToJson(InterimStepModel instance) =>
    <String, dynamic>{
      'goal': instance.goal,
      'reward': instance.reward.toJson(),
    };
