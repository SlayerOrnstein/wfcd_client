import 'abstract_item.dart';

class SolNode extends Item {
  const SolNode({
    required super.uniqueName,
    required super.name,
    required String super.description,
    required super.type,
    required super.category,
    required super.tradable,
    required this.systemIndex,
    required this.systemName,
    required this.masterReq,
    required this.missionIndex,
    required this.factionIndex,
    required this.minEnemyLevel,
    required this.maxEnemyLevel,
    super.patchlogs,
  });

  final int systemIndex;
  final String systemName;
  final int masterReq, missionIndex, factionIndex;
  final int minEnemyLevel, maxEnemyLevel;

  @override
  List<Object?> get props {
    return super.props
      ..addAll([
        systemIndex,
        systemName,
        masterReq,
        missionIndex,
        factionIndex,
        minEnemyLevel,
        maxEnemyLevel,
      ]);
  }
}
