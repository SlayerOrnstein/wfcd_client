// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patch_log_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchlogModel _$PatchlogModelFromJson(Map json) {
  return $checkedNew('PatchlogModel', json, () {
    final val = PatchlogModel(
      name: $checkedConvert(json, 'name', (v) => v as String),
      date: $checkedConvert(json, 'date', (v) => DateTime.parse(v as String)),
      url: $checkedConvert(json, 'url', (v) => v as String),
      imgUrl: $checkedConvert(json, 'imgUrl', (v) => v as String?),
      additions: $checkedConvert(json, 'additions', (v) => v as String),
      changes: $checkedConvert(json, 'changes', (v) => v as String),
      fixes: $checkedConvert(json, 'fixes', (v) => v as String),
    );
    return val;
  });
}

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
