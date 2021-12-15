// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrbiterNewsModel _$OrbiterNewsModelFromJson(Map json) => $checkedCreate(
      'OrbiterNewsModel',
      json,
      ($checkedConvert) {
        final val = OrbiterNewsModel(
          id: $checkedConvert('id', (v) => v as String),
          message: $checkedConvert('message', (v) => v as String),
          link: $checkedConvert('link', (v) => v as String),
          imageLink: $checkedConvert('imageLink', (v) => v as String),
          priority: $checkedConvert('priority', (v) => v as bool),
          date: $checkedConvert('date', (v) => DateTime.parse(v as String)),
          update: $checkedConvert('update', (v) => v as bool),
          primeAccess: $checkedConvert('primeAccess', (v) => v as bool),
          stream: $checkedConvert('stream', (v) => v as bool),
          translations: $checkedConvert(
              'translations', (v) => Map<String, String>.from(v as Map)),
        );
        return val;
      },
    );

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
