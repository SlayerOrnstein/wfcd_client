// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'synth_location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SynthLocationModel _$SynthLocationModelFromJson(Map json) {
  return $checkedNew('SynthLocationModel', json, () {
    final val = SynthLocationModel(
      faction: $checkedConvert(json, 'faction', (v) => v as String),
      mission: $checkedConvert(json, 'mission', (v) => v as String),
      planet: $checkedConvert(json, 'planet', (v) => v as String),
      level: $checkedConvert(json, 'level', (v) => v as String),
      type: $checkedConvert(json, 'type', (v) => v as String),
      lastVerified: $checkedConvert(json, 'last_verified', (v) => v as String),
      spawnRate: $checkedConvert(json, 'spawn_rate', (v) => v as String),
    );
    return val;
  }, fieldKeyMap: const {
    'lastVerified': 'last_verified',
    'spawnRate': 'spawn_rate'
  });
}

Map<String, dynamic> _$SynthLocationModelToJson(SynthLocationModel instance) =>
    <String, dynamic>{
      'level': instance.level,
      'faction': instance.faction,
      'mission': instance.mission,
      'planet': instance.planet,
      'type': instance.type,
      'last_verified': instance.lastVerified,
      'spawn_rate': instance.spawnRate,
    };
