// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlertModel _$AlertModelFromJson(Map json) => $checkedCreate(
      'AlertModel',
      json,
      ($checkedConvert) {
        final val = AlertModel(
          id: $checkedConvert('id', (v) => v as String),
          activation:
              $checkedConvert('activation', (v) => DateTime.parse(v as String)),
          expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
          active: $checkedConvert('active', (v) => v as bool),
          mission: $checkedConvert(
              'mission',
              (v) =>
                  MissionModel.fromJson(Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$AlertModelToJson(AlertModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'active': instance.active,
      'mission': instance.mission.toJson(),
    };
