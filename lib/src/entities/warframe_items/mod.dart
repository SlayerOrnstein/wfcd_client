import 'abstract_item.dart';
import 'component.dart';
import 'patch_log.dart';

class Mod extends Item {
  const Mod({
    required String uniqueName,
    required String name,
    String? description,
    required String type,
    required String imageName,
    required String category,
    required this.polarity,
    required this.rarity,
    required this.baseDrain,
    required this.fusionLimit,
    this.compatName,
    this.modSet,
    this.levelStats,
    required this.isAugment,
    required bool tradable,
    this.transmutable,
    required List<Drop>? drops,
    List<Patchlog>? patchlogs,
    String? wikiaThumbnail,
    String? wikiaUrl,
  }) : super(
          uniqueName: uniqueName,
          name: name,
          description: description ?? '',
          imageName: imageName,
          type: type,
          category: category,
          tradable: tradable,
          patchlogs: patchlogs,
          drops: drops,
          wikiaThumbnail: wikiaThumbnail,
          wikiaUrl: wikiaUrl,
        );

  final String polarity, rarity;
  final String? compatName, modSet;
  final int baseDrain, fusionLimit;
  final List<Map<String, List<String>>>? levelStats;
  final bool isAugment;
  final bool? transmutable;

  @override
  List<Object?> get props {
    return super.props
      ..addAll([
        polarity,
        rarity,
        compatName,
        modSet,
        baseDrain,
        fusionLimit,
        levelStats,
        isAugment,
        transmutable
      ]);
  }
}
