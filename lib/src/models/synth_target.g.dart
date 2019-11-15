// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'synth_target.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SynthTarget _$SynthTargetFromJson(Map<String, dynamic> json) {
  return SynthTarget(
    name: json['name'] as String,
    locations: (json['locations'] as List)
        ?.map((e) => e == null
            ? null
            : SynthLocation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SynthTargetToJson(SynthTarget instance) =>
    <String, dynamic>{
      'name': instance.name,
      'locations': instance.locations,
    };
