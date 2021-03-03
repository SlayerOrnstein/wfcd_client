import 'package:json_annotation/json_annotation.dart';
import '../../entities/warframe_items/misc.dart';

import 'component_model.dart';
import 'patch_log_model.dart';

part 'misc_models.g.dart';

@JsonSerializable()
class MiscItemModel extends MiscItem {
  MiscItemModel({
    required String uniqueName,
    required String name,
    String? description,
    required String type,
    String? imageName,
    String? productCategory,
    required String category,
    required bool tradable,
    this.patchlogs,
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

  factory MiscItemModel.fromJson(Map<String, dynamic> json) {
    return _$MiscItemModelFromJson(json);
  }

  @override
  final List<PatchlogModel>? patchlogs;

  Map<String, dynamic> toJson() => _$MiscItemModelToJson(this);
}

@JsonSerializable()
class MiscFoundryItemModel extends MiscFoundryItem {
  const MiscFoundryItemModel({
    required String uniqueName,
    required String name,
    required String description,
    required String type,
    required String imageName,
    String? productCategory,
    required String category,
    required bool tradable,
    int? masteryReq,
    this.drops,
    required int buildPrice,
    required int buildTime,
    required int skipBuildTimePrice,
    required int buildQuantity,
    required bool consumeOnBuild,
    this.patchlogs,
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
          buildPrice: buildPrice,
          buildTime: buildTime,
          skipBuildTimePrice: skipBuildTimePrice,
          buildQuantity: buildQuantity,
          consumeOnBuild: consumeOnBuild,
          wikiaUrl: wikiaUrl,
          wikiaThumbnail: wikiaThumbnail,
        );

  factory MiscFoundryItemModel.fromJson(Map<String, dynamic> json) {
    return _$MiscFoundryItemModelFromJson(json);
  }

  @override
  final List<PatchlogModel>? patchlogs;

  @override
  final List<DropModel>? drops;

  Map<String, dynamic> toJson() => _$MiscFoundryItemModelToJson(this);
}
