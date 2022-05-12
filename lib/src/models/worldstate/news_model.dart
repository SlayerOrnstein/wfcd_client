import 'package:json_annotation/json_annotation.dart';

import '../../entities/worldstate/news.dart';

part 'news_model.g.dart';

@JsonSerializable()
class OrbiterNewsModel extends OrbiterNews {
  const OrbiterNewsModel({
    required super.id,
    required super.message,
    required super.link,
    required super.imageLink,
    required super.priority,
    required super.date,
    required super.update,
    required super.primeAccess,
    required super.stream,
    required super.translations,
  });

  factory OrbiterNewsModel.fromJson(Map<String, dynamic> json) {
    return _$OrbiterNewsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OrbiterNewsModelToJson(this);
}
