import 'package:json_annotation/json_annotation.dart';

import '../../entities/synth_target/synth_location.dart';

part 'synth_location_model.g.dart';

@JsonSerializable()
class SynthLocationModel extends SynthLocation {
  const SynthLocationModel({
    required String faction,
    required String mission,
    required String planet,
    required String level,
    required String type,
    required this.lastVerified,
    required this.spawnRate,
  }) : super(
          faction: faction,
          mission: mission,
          planet: planet,
          level: level,
          type: type,
          lastVerified: lastVerified,
          spawnRate: spawnRate,
        );

  factory SynthLocationModel.fromJson(Map<String, dynamic> json) {
    return _$SynthLocationModelFromJson(json);
  }

  @JsonKey(name: 'last_verified')
  final String lastVerified;

  @JsonKey(name: 'spawn_rate')
  final String spawnRate;

  Map<String, dynamic> toJson() => _$SynthLocationModelToJson(this);
}
