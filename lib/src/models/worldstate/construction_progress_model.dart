import 'package:json_annotation/json_annotation.dart';

import '../../entities/worldstate/construction_progress.dart';

part 'construction_progress_model.g.dart';

@JsonSerializable()
class ConstructionProgressModel extends ConstructionProgress {
  const ConstructionProgressModel({
    required String id,
    required String fomorianProgress,
    required String razorbackProgress,
    required String unknownProgress,
  }) : super(
          id: id,
          fomorianProgress: fomorianProgress,
          razorbackProgress: razorbackProgress,
          unknownProgress: unknownProgress,
        );

  factory ConstructionProgressModel.fromJson(Map<String, dynamic> json) {
    return _$ConstructionProgressModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ConstructionProgressModelToJson(this);
}
