import 'package:json_annotation/json_annotation.dart';

import '../../entities/warframe_items/patch_log.dart';

part 'patch_log_model.g.dart';

@JsonSerializable()
class PatchlogModel extends Patchlog {
  const PatchlogModel({
    String name,
    DateTime date,
    String url,
    String imgUrl,
    String additions,
    String changes,
    String fixes,
  }) : super(
          name: name,
          date: date,
          url: url,
          imgUrl: imgUrl,
          additions: additions,
          changes: changes,
          fixes: fixes,
        );

  factory PatchlogModel.fromJson(Map<String, dynamic> json) {
    return _$PatchlogModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PatchlogModelToJson(this);
}
