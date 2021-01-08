import 'package:json_annotation/json_annotation.dart';

import '../../entities/warframe_items/patch_log.dart';

part 'patch_log_model.g.dart';

@JsonSerializable()
class PatchlogModel extends Patchlog {
  const PatchlogModel({
    required String name,
    required DateTime date,
    required String url,
    String? imgUrl,
    required String additions,
    required String changes,
    required String fixes,
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
