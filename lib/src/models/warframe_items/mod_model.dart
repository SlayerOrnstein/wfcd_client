import 'package:json_annotation/json_annotation.dart';

import '../../entities/warframe_items/mod.dart';
import 'patch_log_model.dart';

part 'mod_model.g.dart';

@JsonSerializable()
class ModModel extends Mod {
  const ModModel({
    required String uniqueName,
    required String name,
    String? description,
    required String imageName,
    required String polarity,
    required String rarity,
    required int baseDrain,
    required int fusionLimit,
    bool? transmutable,
    String? compatName,
    required String type,
     List<Map<String, List<String>>>? levelStats,
    required String category,
    required bool isAugment,
    required bool tradable,
    this.patchlogs,
    String? wikiaThumbnail,
    String? wikiaUrl,
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
  final List<PatchlogModel>? patchlogs;

  Map<String, dynamic> toJson() => _$ModModelToJson(this);
}
