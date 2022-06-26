// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zariman.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ZarimanModel _$ZarimanModelFromJson(Map json) => $checkedCreate(
      'ZarimanModel',
      json,
      ($checkedConvert) {
        final val = ZarimanModel(
          id: $checkedConvert('id', (v) => v as String),
          activation:
              $checkedConvert('activation', (v) => DateTime.parse(v as String)),
          expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
          isCorpus: $checkedConvert('isCorpus', (v) => v as bool),
          state: $checkedConvert('state', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$ZarimanModelToJson(ZarimanModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'state': instance.state,
      'isCorpus': instance.isCorpus,
    };
