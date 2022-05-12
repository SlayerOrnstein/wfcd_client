import 'package:json_annotation/json_annotation.dart';

import '../../entities/worldstate/darvo_deal.dart';

part 'darvo_deal_model.g.dart';

@JsonSerializable()
class DarvoDealModel extends DarvoDeal {
  const DarvoDealModel({
    required super.id,
    required super.activation,
    required super.expiry,
    required super.item,
    required super.originalPrice,
    required super.salePrice,
    required super.total,
    required super.sold,
    required super.discount,
  });

  factory DarvoDealModel.fromJson(Map<String, dynamic> json) {
    return _$DarvoDealModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DarvoDealModelToJson(this);
}
