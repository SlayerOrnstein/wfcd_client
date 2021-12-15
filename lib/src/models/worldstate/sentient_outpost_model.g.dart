// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sentient_outpost_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SentientOutpostModel _$SentientOutpostModelFromJson(Map json) => $checkedCreate(
      'SentientOutpostModel',
      json,
      ($checkedConvert) {
        final val = SentientOutpostModel(
          id: $checkedConvert('id', (v) => v as String),
          activation:
              $checkedConvert('activation', (v) => DateTime.parse(v as String)),
          expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
          active: $checkedConvert('active', (v) => v as bool),
          mission: $checkedConvert(
              'mission',
              (v) => v == null
                  ? null
                  : MissionModel.fromJson(Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$SentientOutpostModelToJson(
        SentientOutpostModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'active': instance.active,
      'mission': instance.mission?.toJson(),
    };
