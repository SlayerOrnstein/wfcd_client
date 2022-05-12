import 'package:json_annotation/json_annotation.dart';

import '../../entities/warframe_items/mod.dart';
import 'component_model.dart';
import 'patch_log_model.dart';

part 'mod_model.g.dart';

@JsonSerializable()
class ModModel extends Mod {
  const ModModel({
    required super.uniqueName,
    required super.name,
    super.description,
    required super.imageName,
    required super.polarity,
    required super.rarity,
    required super.baseDrain,
    required super.fusionLimit,
    super.transmutable,
    super.compatName,
    super.modSet,
    required super.type,
    super.levelStats,
    required super.category,
    required this.drops,
    bool? isAugment,
    required super.tradable,
    this.patchlogs,
    super.wikiaThumbnail,
    super.wikiaUrl,
  }) : super(
          drops: drops,
          isAugment: isAugment ?? false,
          patchlogs: patchlogs,
        );

  factory ModModel.fromJson(Map<String, dynamic> json) {
    return _$ModModelFromJson(json);
  }

  @override
  final List<DropModel>? drops;

  @override
  final List<PatchlogModel>? patchlogs;

  Map<String, dynamic> toJson() => _$ModModelToJson(this);
}
