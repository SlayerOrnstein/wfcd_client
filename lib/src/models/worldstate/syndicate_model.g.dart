// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'syndicate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SyndicateModel _$SyndicateModelFromJson(Map json) => $checkedCreate(
      'SyndicateModel',
      json,
      ($checkedConvert) {
        final val = SyndicateModel(
          id: $checkedConvert('id', (v) => v as String),
          activation:
              $checkedConvert('activation', (v) => DateTime.parse(v as String)),
          expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
          syndicate: $checkedConvert('syndicate', (v) => v as String),
          syndicateKey: $checkedConvert('syndicateKey', (v) => v as String),
          active: $checkedConvert('active', (v) => v as bool),
          jobs: $checkedConvert(
              'jobs',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      JobModel.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$SyndicateModelToJson(SyndicateModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'active': instance.active,
      'syndicate': instance.syndicate,
      'syndicateKey': instance.syndicateKey,
      'jobs': instance.jobs.map((e) => e.toJson()).toList(),
    };
