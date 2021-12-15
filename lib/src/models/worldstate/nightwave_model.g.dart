// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nightwave_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NightwaveModel _$NightwaveModelFromJson(Map json) => $checkedCreate(
      'NightwaveModel',
      json,
      ($checkedConvert) {
        final val = NightwaveModel(
          id: $checkedConvert('id', (v) => v as String),
          activation:
              $checkedConvert('activation', (v) => DateTime.parse(v as String)),
          expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
          tag: $checkedConvert('tag', (v) => v as String),
          active: $checkedConvert('active', (v) => v as bool),
          season: $checkedConvert('season', (v) => v as int),
          phase: $checkedConvert('phase', (v) => v as int),
          possibleChallenges: $checkedConvert(
              'possibleChallenges',
              (v) => (v as List<dynamic>)
                  .map((e) => ChallengeModel.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
          activeChallenges: $checkedConvert(
              'activeChallenges',
              (v) => (v as List<dynamic>)
                  .map((e) => ChallengeModel.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
          rewardTypes: $checkedConvert('rewardTypes',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          startString: $checkedConvert('startString', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$NightwaveModelToJson(NightwaveModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'startString': instance.startString,
      'tag': instance.tag,
      'active': instance.active,
      'season': instance.season,
      'phase': instance.phase,
      'rewardTypes': instance.rewardTypes,
      'possibleChallenges':
          instance.possibleChallenges.map((e) => e.toJson()).toList(),
      'activeChallenges':
          instance.activeChallenges.map((e) => e.toJson()).toList(),
    };

ChallengeModel _$ChallengeModelFromJson(Map json) => $checkedCreate(
      'ChallengeModel',
      json,
      ($checkedConvert) {
        final val = ChallengeModel(
          id: $checkedConvert('id', (v) => v as String),
          activation:
              $checkedConvert('activation', (v) => DateTime.parse(v as String)),
          expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
          title: $checkedConvert('title', (v) => v as String),
          desc: $checkedConvert('desc', (v) => v as String),
          active: $checkedConvert('active', (v) => v as bool),
          isDaily: $checkedConvert('isDaily', (v) => v as bool?),
          isElite: $checkedConvert('isElite', (v) => v as bool),
          reputation: $checkedConvert('reputation', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$ChallengeModelToJson(ChallengeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'title': instance.title,
      'desc': instance.desc,
      'active': instance.active,
      'isElite': instance.isElite,
      'isDaily': instance.isDaily,
      'reputation': instance.reputation,
    };
