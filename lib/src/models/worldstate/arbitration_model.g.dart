// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arbitration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArbitrationModel _$ArbitrationModelFromJson(Map json) => $checkedCreate(
      'ArbitrationModel',
      json,
      ($checkedConvert) {
        final val = ArbitrationModel(
          activation: $checkedConvert('activation',
              (v) => v == null ? null : DateTime.parse(v as String)),
          expiry: $checkedConvert(
              'expiry', (v) => v == null ? null : DateTime.parse(v as String)),
          node: $checkedConvert('node', (v) => v as String?),
          enemy: $checkedConvert('enemy', (v) => v as String?),
          type: $checkedConvert('type', (v) => v as String?),
          archwing: $checkedConvert('archwing', (v) => v as bool?),
          sharkwing: $checkedConvert('sharkwing', (v) => v as bool?),
        );
        return val;
      },
    );

Map<String, dynamic> _$ArbitrationModelToJson(ArbitrationModel instance) =>
    <String, dynamic>{
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'node': instance.node,
      'enemy': instance.enemy,
      'type': instance.type,
      'archwing': instance.archwing,
      'sharkwing': instance.sharkwing,
    };
