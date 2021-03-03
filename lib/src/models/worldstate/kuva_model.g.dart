// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kuva_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KuvaModel _$KuvaModelFromJson(Map json) {
  return $checkedNew('KuvaModel', json, () {
    final val = KuvaModel(
      activation: $checkedConvert(
          json, 'activation', (v) => DateTime.parse(v as String)),
      expiry:
          $checkedConvert(json, 'expiry', (v) => DateTime.parse(v as String)),
      node: $checkedConvert(json, 'node', (v) => v as String),
      enemy: $checkedConvert(json, 'enemy', (v) => v as String),
      type: $checkedConvert(json, 'type', (v) => v as String),
      archwing: $checkedConvert(json, 'archwing', (v) => v as bool?),
      sharkwing: $checkedConvert(json, 'sharkwing', (v) => v as bool?),
    );
    return val;
  });
}

Map<String, dynamic> _$KuvaModelToJson(KuvaModel instance) => <String, dynamic>{
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'node': instance.node,
      'enemy': instance.enemy,
      'type': instance.type,
      'archwing': instance.archwing,
      'sharkwing': instance.sharkwing,
    };
