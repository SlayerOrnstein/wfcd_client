import 'abstract_item.dart';
import 'component.dart';
import 'patch_log.dart';

class BasicItem extends FoundryItem {
  const BasicItem({
    String uniqueName,
    String name,
    String description,
    String type,
    String imageName,
    String productCategory,
    String category,
    bool tradable,
    int masteryReq,
    List<Component> components,
    this.drops,
    int buildPrice,
    int buildTime,
    int skipBuildTimePrice,
    int buildQuantity,
    bool consumeOnBuild,
    List<Patchlog> patchlogs,
    String wikiaUrl,
    String wikiaThumbnail,
  }) : super(
          uniqueName: uniqueName,
          name: name,
          description: description,
          imageName: imageName,
          productCategory: productCategory,
          type: type,
          category: category,
          tradable: tradable,
          masteryReq: masteryReq,
          components: components,
          buildPrice: buildPrice,
          buildTime: buildTime,
          skipBuildTimePrice: skipBuildTimePrice,
          buildQuantity: buildQuantity,
          consumeOnBuild: consumeOnBuild,
          patchlogs: patchlogs,
          wikiaUrl: wikiaUrl,
          wikiaThumbnail: wikiaThumbnail,
        );

  final List<Drop> drops;

  @override
  List<Object> get props => super.props..add(drops);
}

class SolNode extends Item {
  const SolNode({
    String uniqueName,
    String name,
    String description,
    String type,
    String imageName,
    String category,
    bool tradable,
    this.systemIndex,
    this.systemName,
    this.masterReq,
    this.missionIndex,
    this.factionIndex,
    this.minEnemyLevel,
    this.maxEnemyLevel,
    List<Patchlog> patchlogs,
  }) : super(
          uniqueName: uniqueName,
          name: name,
          description: description,
          imageName: imageName,
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
  List<Object> get props {
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
