// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'synth_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SynthLocation _$SynthLocationFromJson(Map<String, dynamic> json) {
  return SynthLocation(
    lastVerified: json['last_verified'] as String,
    level: json['level'] as String,
    faction: json['faction'] as String,
    spawnRate: json['spawn_rate'] as String,
    mission: json['mission'] as String,
    planet: json['planet'] as String,
    type: json['type'] as String,
  );
}

Map<String, dynamic> _$SynthLocationToJson(SynthLocation instance) =>
    <String, dynamic>{
      'last_verified': instance.lastVerified,
      'spawn_rate': instance.spawnRate,
      'level': instance.level,
      'faction': instance.faction,
      'mission': instance.mission,
      'planet': instance.planet,
      'type': instance.type,
    };
