import 'abstract_item.dart';
import 'patch_log.dart';

class SolNode extends Item {
  const SolNode({
    required String uniqueName,
    required String name,
    required String description,
    required String type,
    required String category,
    required bool tradable,
    required this.systemIndex,
    required this.systemName,
    required this.masterReq,
    required this.missionIndex,
    required this.factionIndex,
    required this.minEnemyLevel,
    required this.maxEnemyLevel,
    List<Patchlog>? patchlogs,
  }) : super(
          uniqueName: uniqueName,
          name: name,
          description: description,
          type: type,
          category: category,
          tradable: tradable,
          patchlogs: patchlogs,
        );

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
