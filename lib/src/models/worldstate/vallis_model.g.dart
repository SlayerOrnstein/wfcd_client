// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vallis_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VallisModel _$VallisModelFromJson(Map json) => $checkedCreate(
      'VallisModel',
      json,
      ($checkedConvert) {
        final val = VallisModel(
          id: $checkedConvert('id', (v) => v as String),
          activation:
              $checkedConvert('activation', (v) => DateTime.parse(v as String)),
          expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
          state: $checkedConvert('state', (v) => v as String),
          isWarm: $checkedConvert('isWarm', (v) => v as bool),
        );
        return val;
      },
    );

Map<String, dynamic> _$VallisModelToJson(VallisModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'state': instance.state,
      'isWarm': instance.isWarm,
    };
