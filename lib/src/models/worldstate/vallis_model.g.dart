// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vallis_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VallisModel _$VallisModelFromJson(Map json) {
  return $checkedNew('VallisModel', json, () {
    final val = VallisModel(
      id: $checkedConvert(json, 'id', (v) => v as String),
      activation: $checkedConvert(
          json, 'activation', (v) => DateTime.parse(v as String)),
      expiry:
          $checkedConvert(json, 'expiry', (v) => DateTime.parse(v as String)),
      state: $checkedConvert(json, 'state', (v) => v as String),
      isWarm: $checkedConvert(json, 'isWarm', (v) => v as bool),
    );
    return val;
  });
}

Map<String, dynamic> _$VallisModelToJson(VallisModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'state': instance.state,
      'isWarm': instance.isWarm,
    };
