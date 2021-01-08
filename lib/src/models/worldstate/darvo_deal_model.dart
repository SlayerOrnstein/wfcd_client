import 'package:json_annotation/json_annotation.dart';

import '../../entities/worldstate/darvo_deal.dart';

part 'darvo_deal_model.g.dart';

@JsonSerializable()
class DarvoDealModel extends DarvoDeal {
  const DarvoDealModel({
    required String id,
    required DateTime activation,
    required DateTime expiry,
    required String item,
    required int originalPrice,
    required int salePrice,
    required int total,
    required int sold,
    required int discount,
  }) : super(
          id: id,
          activation: activation,
          expiry: expiry,
          item: item,
          originalPrice: originalPrice,
          salePrice: salePrice,
          total: total,
          sold: sold,
          discount: discount,
        );

  factory DarvoDealModel.fromJson(Map<String, dynamic> json) {
    return _$DarvoDealModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DarvoDealModelToJson(this);
}
