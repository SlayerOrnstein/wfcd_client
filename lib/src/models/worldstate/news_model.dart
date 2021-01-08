import 'package:json_annotation/json_annotation.dart';

import '../../entities/worldstate/news.dart';

part 'news_model.g.dart';

@JsonSerializable()
class OrbiterNewsModel extends OrbiterNews {
  const OrbiterNewsModel({
    required String id,
    required String message,
    required String link,
    required String imageLink,
    required bool priority,
    required DateTime date,
    required bool update,
    required bool primeAccess,
    required bool stream,
    required Map<String, String> translations,
  }) : super(
          id: id,
          message: message,
          link: link,
          imageLink: imageLink,
          priority: priority,
          date: date,
          update: update,
          primeAccess: primeAccess,
          stream: stream,
          translations: translations,
        );

  factory OrbiterNewsModel.fromJson(Map<String, dynamic> json) {
    return _$OrbiterNewsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OrbiterNewsModelToJson(this);
}
