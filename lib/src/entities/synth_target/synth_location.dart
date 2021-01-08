import 'package:equatable/equatable.dart';

class SynthLocation extends Equatable {
  const SynthLocation({
    required this.lastVerified,
    required this.level,
    required this.faction,
    required this.spawnRate,
    required this.mission,
    required this.planet,
    required this.type,
  });

  final String lastVerified;
  final String spawnRate;
  final String level, faction;
  final String mission, planet, type;

  @override
  List<Object?> get props {
    return [lastVerified, level, faction, spawnRate, mission, planet, type];
  }
}
