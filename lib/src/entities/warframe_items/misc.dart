import 'abstract_item.dart';
import 'component.dart';
import 'patch_log.dart';

class MiscItem extends Item {
  const MiscItem({
    required String uniqueName,
    required String name,
    String? description,
    required String type,
    String? imageName,
    String? productCategory,
    required String category,
    required bool tradable,
    List<Patchlog>? patchlogs,
    String? wikiaUrl,
    String? wikiaThumbnail,
  }) : super(
          uniqueName: uniqueName,
          name: name,
          description: description,
          type: type,
          imageName: imageName,
          productCategory: productCategory,
          category: category,
          tradable: tradable,
          patchlogs: patchlogs,
          wikiaUrl: wikiaUrl,
          wikiaThumbnail: wikiaThumbnail,
        );
}

class MiscFoundryItem extends FoundryItem {
  const MiscFoundryItem({
    required String uniqueName,
    required String name,
    String? description,
    required String type,
    required String imageName,
    String? productCategory,
    required String category,
    required bool tradable,
    int? masteryReq,
    List<Component>? components,
    String? vaultDate,
    bool? vaulted,
    required int buildPrice,
    required int buildTime,
    required int skipBuildTimePrice,
    required int buildQuantity,
    required bool consumeOnBuild,
    List<Patchlog>? patchlogs,
    String? wikiaUrl,
    String? wikiaThumbnail,
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
          components: components ?? const <Component>[],
          buildPrice: buildPrice,
          buildTime: buildTime,
          skipBuildTimePrice: skipBuildTimePrice,
          buildQuantity: buildQuantity,
          consumeOnBuild: consumeOnBuild,
          patchlogs: patchlogs ?? const <Patchlog>[],
          wikiaUrl: wikiaUrl,
          wikiaThumbnail: wikiaThumbnail,
          vaultDate: vaultDate,
          vaulted: vaulted,
        );
}
