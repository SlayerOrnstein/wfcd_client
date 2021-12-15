// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'construction_progress_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConstructionProgressModel _$ConstructionProgressModelFromJson(Map json) =>
    $checkedCreate(
      'ConstructionProgressModel',
      json,
      ($checkedConvert) {
        final val = ConstructionProgressModel(
          id: $checkedConvert('id', (v) => v as String),
          fomorianProgress:
              $checkedConvert('fomorianProgress', (v) => v as String),
          razorbackProgress:
              $checkedConvert('razorbackProgress', (v) => v as String),
          unknownProgress:
              $checkedConvert('unknownProgress', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$ConstructionProgressModelToJson(
        ConstructionProgressModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fomorianProgress': instance.fomorianProgress,
      'razorbackProgress': instance.razorbackProgress,
      'unknownProgress': instance.unknownProgress,
    };
