// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'construction_progress_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConstructionProgressModel _$ConstructionProgressModelFromJson(Map json) {
  return $checkedNew('ConstructionProgressModel', json, () {
    final val = ConstructionProgressModel(
      id: $checkedConvert(json, 'id', (v) => v as String),
      fomorianProgress:
          $checkedConvert(json, 'fomorianProgress', (v) => v as String),
      razorbackProgress:
          $checkedConvert(json, 'razorbackProgress', (v) => v as String),
      unknownProgress:
          $checkedConvert(json, 'unknownProgress', (v) => v as String),
    );
    return val;
  });
}

Map<String, dynamic> _$ConstructionProgressModelToJson(
        ConstructionProgressModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fomorianProgress': instance.fomorianProgress,
      'razorbackProgress': instance.razorbackProgress,
      'unknownProgress': instance.unknownProgress,
    };
