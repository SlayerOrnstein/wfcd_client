import 'package:json_annotation/json_annotation.dart';

import '../../entities/worldstate/sentient_outpost.dart';
import 'mission_model.dart';

part 'sentient_outpost_model.g.dart';

@JsonSerializable()
class SentientOutpostModel extends SentientOutpost {
  const SentientOutpostModel({
    String id,
    DateTime activation,
    DateTime expiry,
    bool active,
    this.mission,
  }) : super(
          id: id,
          activation: activation,
          expiry: expiry,
          active: active,
        );

  factory SentientOutpostModel.fromJson(Map<String, dynamic> json) {
    return _$SentientOutpostModelFromJson(json);
  }

  @override
  final MissionModel mission;

  Map<String, dynamic> toJson() => _$SentientOutpostModelToJson(this);
}
