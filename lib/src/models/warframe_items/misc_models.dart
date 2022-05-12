import 'package:json_annotation/json_annotation.dart';
import '../../entities/warframe_items/misc.dart';

import 'component_model.dart';
import 'patch_log_model.dart';

part 'misc_models.g.dart';

@JsonSerializable()
class MiscItemModel extends MiscItem {
  const MiscItemModel({
    required super.uniqueName,
    required super.name,
    super.description,
    required super.type,
    super.imageName,
    super.productCategory,
    required super.category,
    required super.tradable,
    this.patchlogs,
    super.wikiaUrl,
    super.wikiaThumbnail,
  }) : super(
          patchlogs: patchlogs,
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
    required super.uniqueName,
    required super.name,
    super.description,
    required super.type,
    required super.imageName,
    super.productCategory,
    required super.category,
    required super.tradable,
    super.masteryReq,
    this.drops,
    required super.buildPrice,
    required super.buildTime,
    required super.skipBuildTimePrice,
    required super.buildQuantity,
    required super.consumeOnBuild,
    this.patchlogs,
    super.wikiaUrl,
    super.wikiaThumbnail,
  });

  factory MiscFoundryItemModel.fromJson(Map<String, dynamic> json) {
    return _$MiscFoundryItemModelFromJson(json);
  }

  @override
  final List<PatchlogModel>? patchlogs;

  @override
  final List<DropModel>? drops;

  Map<String, dynamic> toJson() => _$MiscFoundryItemModelToJson(this);
}
