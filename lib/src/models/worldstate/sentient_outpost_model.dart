import 'package:json_annotation/json_annotation.dart';

import '../../entities/worldstate/sentient_outpost.dart';
import 'mission_model.dart';

part 'sentient_outpost_model.g.dart';

@JsonSerializable()
class SentientOutpostModel extends SentientOutpost {
  const SentientOutpostModel({
    required String id,
    required DateTime activation,
    required DateTime expiry,
    required bool active,
    this.mission,
  }) : super(
          id: id,
          activation: activation,
          expiry: expiry,
          active: active,
          mission: mission,
        );

  factory SentientOutpostModel.fromJson(Map<String, dynamic> json) {
    return _$SentientOutpostModelFromJson(json);
  }

  @override
  final MissionModel? mission;

  Map<String, dynamic> toJson() => _$SentientOutpostModelToJson(this);
}
