import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'component.dart';
import 'patch_log.dart';

@immutable
abstract class Item extends Equatable {
  const Item({
    this.uniqueName,
    this.name,
    this.description,
    this.imageName,
    this.tradable,
    this.excludeFromCodex = false,
    this.type,
    this.productCategory,
    this.category,
    this.patchlogs,
    this.wikiaUrl,
    this.wikiaThumbnail,
  });

  final String uniqueName;
  final String name;
  final String description;
  final bool excludeFromCodex;
  final String type;
  final String imageName;
  final String productCategory;
  final String category;
  final bool tradable;
  final List<Patchlog> patchlogs;
  final String wikiaUrl, wikiaThumbnail;

  String get imageUrl {
    const baseUrl = 'https://cdn.warframestat.us';
    const opts = 'o_webp,progressive_false';
    final uriEncoded = Uri.encodeFull('$baseUrl/img/$imageName');

    return '$baseUrl/$opts/$uriEncoded';
  }

  @override
  List<Object> get props {
    return [
      uniqueName,
      name,
      description,
      type,
      imageName,
      productCategory,
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
    String uniqueName,
    String name,
    String description,
    String type,
    String imageName,
    String productCategory,
    String category,
    bool tradable,
    this.masteryReq,
    this.components,
    this.buildPrice,
    this.buildTime,
    this.skipBuildTimePrice,
    this.buildQuantity,
    this.consumeOnBuild,
    List<Patchlog> patchlogs,
    String wikiaUrl,
    String wikiaThumbnail,
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

  final int masteryReq;
  final List<Component> components;
  final int buildPrice, buildTime, skipBuildTimePrice, buildQuantity;
  final bool consumeOnBuild;

  @override
  List<Object> get props {
    return super.props
      ..addAll([
        masteryReq,
        buildPrice,
        buildTime,
        skipBuildTimePrice,
        buildQuantity,
        consumeOnBuild,
        productCategory,
      ]);
  }
}
