// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patch_log_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchlogModel _$PatchlogModelFromJson(Map json) => $checkedCreate(
      'PatchlogModel',
      json,
      ($checkedConvert) {
        final val = PatchlogModel(
          name: $checkedConvert('name', (v) => v as String),
          date: $checkedConvert('date', (v) => DateTime.parse(v as String)),
          url: $checkedConvert('url', (v) => v as String),
          imgUrl: $checkedConvert('imgUrl', (v) => v as String?),
          additions: $checkedConvert('additions', (v) => v as String),
          changes: $checkedConvert('changes', (v) => v as String),
          fixes: $checkedConvert('fixes', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$PatchlogModelToJson(PatchlogModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'imgUrl': instance.imgUrl,
      'additions': instance.additions,
      'changes': instance.changes,
      'fixes': instance.fixes,
      'date': instance.date.toIso8601String(),
    };
