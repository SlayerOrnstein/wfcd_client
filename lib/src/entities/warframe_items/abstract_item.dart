import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'component.dart';
import 'patch_log.dart';

@immutable
abstract class Item extends Equatable {
  const Item({
    required this.uniqueName,
    required this.name,
    this.description,
    this.imageName,
    required this.tradable,
    this.drops,
    this.excludeFromCodex,
    required this.type,
    this.productCategory,
    required this.category,
    this.patchlogs,
    this.wikiaUrl,
    this.wikiaThumbnail,
  });

  final String uniqueName;
  final String name;
  final String? description;
  final bool? excludeFromCodex;
  final String type;
  final String? imageName;
  final String? productCategory;
  final String category;
  final bool tradable;
  final List<Drop>? drops;
  final List<Patchlog>? patchlogs;
  final String? wikiaUrl, wikiaThumbnail;

  String get imageUrl {
    const baseUrl = 'https://cdn.warframestat.us';
    const opts = 'o_webp,progressive_false';
    final uriEncoded = Uri.encodeFull('$baseUrl/img/$imageName');

    return '$baseUrl/$opts/$uriEncoded';
  }

  @override
  List<Object?> get props {
    return [
      uniqueName,
      name,
      description,
      excludeFromCodex,
      type,
      imageName,
      productCategory,
      drops,
      category,
      tradable,
      patchlogs,
      wikiaUrl,
      wikiaThumbnail,
    ];
  }
}

@immutable
abstract class FoundryItem extends Item {
  const FoundryItem({
    required String uniqueName,
    required String name,
    String? description,
    required String type,
    required String imageName,
    String? productCategory,
    required String category,
    required bool tradable,
    this.masteryReq,
    this.components,
    this.buildPrice,
    this.buildTime,
    this.skipBuildTimePrice,
    this.buildQuantity,
    this.vaultDate,
    this.vaulted,
    this.consumeOnBuild,
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

  final int? masteryReq;
  final List<Component>? components;
  final int? buildPrice, buildTime, skipBuildTimePrice, buildQuantity;
  final String? vaultDate;
  final bool? consumeOnBuild, vaulted;

  @override
  List<Object?> get props {
    return super.props
      ..addAll([
        masteryReq,
        buildPrice,
        buildTime,
        skipBuildTimePrice,
        buildQuantity,
        consumeOnBuild,
        vaultDate,
        vaulted,
        productCategory,
      ]);
  }
}
