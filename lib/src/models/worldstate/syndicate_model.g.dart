// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'syndicate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SyndicateModel _$SyndicateModelFromJson(Map json) {
  return $checkedNew('SyndicateModel', json, () {
    final val = SyndicateModel(
      id: $checkedConvert(json, 'id', (v) => v as String),
      activation: $checkedConvert(
          json, 'activation', (v) => DateTime.parse(v as String)),
      expiry:
          $checkedConvert(json, 'expiry', (v) => DateTime.parse(v as String)),
      syndicate: $checkedConvert(json, 'syndicate', (v) => v as String),
      active: $checkedConvert(json, 'active', (v) => v as bool),
      jobs: $checkedConvert(
          json,
          'jobs',
          (v) => (v as List<dynamic>)
              .map(
                  (e) => JobModel.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList()),
    );
    return val;
  });
}

Map<String, dynamic> _$SyndicateModelToJson(SyndicateModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'active': instance.active,
      'syndicate': instance.syndicate,
      'jobs': instance.jobs.map((e) => e.toJson()).toList(),
    };
