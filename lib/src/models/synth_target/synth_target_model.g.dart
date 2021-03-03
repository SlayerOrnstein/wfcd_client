// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'synth_target_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SynthTargetModel _$SynthTargetModelFromJson(Map json) {
  return $checkedNew('SynthTargetModel', json, () {
    final val = SynthTargetModel(
      name: $checkedConvert(json, 'name', (v) => v as String),
      locationModels: $checkedConvert(
          json,
          'locations',
          (v) => (v as List<dynamic>)
              .map((e) => SynthLocationModel.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList()),
    );
    return val;
  }, fieldKeyMap: const {'locationModels': 'locations'});
}

Map<String, dynamic> _$SynthTargetModelToJson(SynthTargetModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'locations': instance.locationModels.map((e) => e.toJson()).toList(),
    };
