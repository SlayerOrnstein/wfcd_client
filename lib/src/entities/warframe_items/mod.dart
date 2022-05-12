import 'abstract_item.dart';

class Mod extends Item {
  const Mod({
    required super.uniqueName,
    required super.name,
    String? description,
    required super.type,
    required String super.imageName,
    required super.category,
    required this.polarity,
    required this.rarity,
    required this.baseDrain,
    required this.fusionLimit,
    this.compatName,
    this.modSet,
    this.levelStats,
    required this.isAugment,
    required super.tradable,
    this.transmutable,
    required super.drops,
    super.patchlogs,
    super.wikiaThumbnail,
    super.wikiaUrl,
  }) : super(
          description: description ?? '',
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
