// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrbiterNewsModel _$OrbiterNewsModelFromJson(Map json) {
  return $checkedNew('OrbiterNewsModel', json, () {
    final val = OrbiterNewsModel(
      id: $checkedConvert(json, 'id', (v) => v as String),
      message: $checkedConvert(json, 'message', (v) => v as String),
      link: $checkedConvert(json, 'link', (v) => v as String),
      imageLink: $checkedConvert(json, 'imageLink', (v) => v as String),
      priority: $checkedConvert(json, 'priority', (v) => v as bool),
      date: $checkedConvert(json, 'date', (v) => DateTime.parse(v as String)),
      update: $checkedConvert(json, 'update', (v) => v as bool),
      primeAccess: $checkedConvert(json, 'primeAccess', (v) => v as bool),
      stream: $checkedConvert(json, 'stream', (v) => v as bool),
      translations: $checkedConvert(
          json, 'translations', (v) => Map<String, String>.from(v as Map)),
    );
    return val;
  });
}

Map<String, dynamic> _$OrbiterNewsModelToJson(OrbiterNewsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'link': instance.link,
      'imageLink': instance.imageLink,
      'date': instance.date.toIso8601String(),
      'priority': instance.priority,
      'update': instance.update,
      'primeAccess': instance.primeAccess,
      'stream': instance.stream,
      'translations': instance.translations,
    };
