import 'package:json_annotation/json_annotation.dart';

import '../../entities/worldstate/construction_progress.dart';

part 'construction_progress_model.g.dart';

@JsonSerializable()
class ConstructionProgressModel extends ConstructionProgress {
  const ConstructionProgressModel({
    required super.id,
    required super.fomorianProgress,
    required super.razorbackProgress,
    required super.unknownProgress,
  });

  factory ConstructionProgressModel.fromJson(Map<String, dynamic> json) {
    return _$ConstructionProgressModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ConstructionProgressModelToJson(this);
}
