import 'package:json_annotation/json_annotation.dart';

import '../../entities/warframe_items/mod.dart';
import 'patch_log_model.dart';

part 'mod_model.g.dart';

@JsonSerializable()
class ModModel extends Mod {
  const ModModel({
    String uniqueName,
    String name,
    String description,
    String imageName,
    String polarity,
    String rarity,
    int baseDrain,
    int fusionLimit,
    String compatName,
    String type,
    List<Map<String, List<String>>> levelStats,
    String category,
    bool isAugment,
    bool tradable,
    this.patchlogs,
    String wikiaThumbnail,
    String wikiaUrl,
    bool transmutable,
  }) : super(
          uniqueName: uniqueName,
          name: name,
          description: description,
          imageName: imageName,
          polarity: polarity,
          rarity: rarity,
          baseDrain: baseDrain,
          fusionLimit: fusionLimit,
          compatName: compatName,
          type: type,
          levelStats: levelStats,
          category: category,
          isAugment: isAugment,
          tradable: tradable,
          patchlogs: patchlogs,
          wikiaThumbnail: wikiaThumbnail,
          wikiaUrl: wikiaUrl,
          transmutable: transmutable,
        );

  factory ModModel.fromJson(Map<String, dynamic> json) {
    return _$ModModelFromJson(json);
  }

  @override
  final List<PatchlogModel> patchlogs;

  Map<String, dynamic> toJson() => _$ModModelToJson(this);
}
