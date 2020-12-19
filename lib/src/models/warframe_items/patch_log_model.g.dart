// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patch_log_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchlogModel _$PatchlogModelFromJson(Map<String, dynamic> json) {
  return PatchlogModel(
    name: json['name'] as String,
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    url: json['url'] as String,
    imgUrl: json['imgUrl'] as String,
    additions: json['additions'] as String,
    changes: json['changes'] as String,
    fixes: json['fixes'] as String,
  );
}

Map<String, dynamic> _$PatchlogModelToJson(PatchlogModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'imgUrl': instance.imgUrl,
      'additions': instance.additions,
      'changes': instance.changes,
      'fixes': instance.fixes,
      'date': instance.date?.toIso8601String(),
    };
