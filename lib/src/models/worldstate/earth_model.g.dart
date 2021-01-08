// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'earth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EarthModel _$EarthModelFromJson(Map json) {
  return $checkedNew('EarthModel', json, () {
    final val = EarthModel(
      id: $checkedConvert(json, 'id', (v) => v as String),
      activation: $checkedConvert(
          json, 'activation', (v) => DateTime.parse(v as String)),
      expiry:
          $checkedConvert(json, 'expiry', (v) => DateTime.parse(v as String)),
      state: $checkedConvert(json, 'state', (v) => v as String),
      isDay: $checkedConvert(json, 'isDay', (v) => v as bool),
      isCetus: $checkedConvert(json, 'isCetus', (v) => v as bool?),
    );
    return val;
  });
}

Map<String, dynamic> _$EarthModelToJson(EarthModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'state': instance.state,
      'isDay': instance.isDay,
      'isCetus': instance.isCetus,
    };
