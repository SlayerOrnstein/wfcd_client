import 'abstract_item.dart';
import 'patch_log.dart';

class Mod extends Item {
  const Mod({
    String uniqueName,
    String name,
    String description,
    String type,
    String imageName,
    String category,
    this.polarity,
    this.rarity,
    this.baseDrain,
    this.fusionLimit,
    this.compatName,
    this.levelStats,
    this.isAugment,
    bool tradable,
    this.transmutable,
    List<Patchlog> patchlogs,
    String wikiaThumbnail,
    String wikiaUrl,
  }) : super(
          uniqueName: uniqueName,
          name: name,
          description: description,
          imageName: imageName,
          type: type,
          category: category,
          tradable: tradable,
          patchlogs: patchlogs,
          wikiaThumbnail: wikiaThumbnail,
          wikiaUrl: wikiaUrl,
        );

  final String polarity, rarity, compatName;
  final int baseDrain, fusionLimit;
  final List<Map<String, List<String>>> levelStats;
  final bool isAugment, transmutable;

  @override
  List<Object> get props {
    return super.props
      ..addAll([
        polarity,
        rarity,
        compatName,
        baseDrain,
        fusionLimit,
        levelStats,
        isAugment,
        transmutable
      ]);
  }
}
