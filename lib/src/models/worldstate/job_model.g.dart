// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobModel _$JobModelFromJson(Map json) => $checkedCreate(
      'JobModel',
      json,
      ($checkedConvert) {
        final val = JobModel(
          type: $checkedConvert('type', (v) => v as String?),
          rewardpool: $checkedConvert('rewardPool', (v) => v),
          enemyLevels: $checkedConvert('enemyLevels',
              (v) => (v as List<dynamic>).map((e) => e as int).toList()),
          standingStages: $checkedConvert('standingStages',
              (v) => (v as List<dynamic>).map((e) => e as int).toList()),
        );
        return val;
      },
      fieldKeyMap: const {'rewardpool': 'rewardPool'},
    );

Map<String, dynamic> _$JobModelToJson(JobModel instance) => <String, dynamic>{
      'type': instance.type,
      'enemyLevels': instance.enemyLevels,
      'standingStages': instance.standingStages,
      'rewardPool': instance.rewardpool,
    };
