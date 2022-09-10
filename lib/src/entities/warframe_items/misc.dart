import 'abstract_item.dart';
import 'component.dart';
import 'patch_log.dart';

class MiscItem extends Item {
  const MiscItem({
    required super.uniqueName,
    required super.name,
    super.description,
    super.drops,
    required super.type,
    super.imageName,
    super.productCategory,
    required super.category,
    required super.tradable,
    super.patchlogs,
    super.wikiaUrl,
    super.wikiaThumbnail,
  });
}

class MiscFoundryItem extends FoundryItem {
  const MiscFoundryItem({
    required super.uniqueName,
    required super.name,
    super.description,
    required super.type,
    required super.imageName,
    super.productCategory,
    required super.category,
    required super.tradable,
    super.masteryReq,
    List<Component>? components,
    super.vaultDate,
    super.vaulted,
    required int super.buildPrice,
    required int super.buildTime,
    required int super.skipBuildTimePrice,
    required int super.buildQuantity,
    required bool super.consumeOnBuild,
    List<Patchlog>? patchlogs,
    super.wikiaUrl,
    super.wikiaThumbnail,
  }) : super(
          components: components ?? const <Component>[],
          patchlogs: patchlogs ?? const <Patchlog>[],
        );
}
