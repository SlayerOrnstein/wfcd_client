import 'package:json_annotation/json_annotation.dart';

import '../../entities/synth_target/synth_location.dart';

part 'synth_location_model.g.dart';

@JsonSerializable()
class SynthLocationModel extends SynthLocation {
  const SynthLocationModel({
    required super.faction,
    required super.mission,
    required super.planet,
    required super.level,
    required super.type,
    required this.lastVerified,
    required this.spawnRate,
  }) : super(
          lastVerified: lastVerified,
          spawnRate: spawnRate,
        );

  factory SynthLocationModel.fromJson(Map<String, dynamic> json) {
    return _$SynthLocationModelFromJson(json);
  }

  @override
  @JsonKey(name: 'last_verified')
  final String lastVerified;

  @override
  @JsonKey(name: 'spawn_rate')
  final String spawnRate;

  Map<String, dynamic> toJson() => _$SynthLocationModelToJson(this);
}
