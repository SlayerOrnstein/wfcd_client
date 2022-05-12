import 'package:json_annotation/json_annotation.dart';

import '../../entities/warframe_items/patch_log.dart';

part 'patch_log_model.g.dart';

@JsonSerializable()
class PatchlogModel extends Patchlog {
  const PatchlogModel({
    required super.name,
    required super.date,
    required super.url,
    super.imgUrl,
    required super.additions,
    required super.changes,
    required super.fixes,
  });

  factory PatchlogModel.fromJson(Map<String, dynamic> json) {
    return _$PatchlogModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PatchlogModelToJson(this);
}
