import 'package:json_annotation/json_annotation.dart';

import '../../entities/worldstate/void_trader.dart';

part 'void_trader_model.g.dart';

@JsonSerializable()
class VoidTraderModel extends VoidTrader {
  const VoidTraderModel({
    required super.id,
    required super.activation,
    required super.expiry,
    required super.character,
    required super.location,
    required super.active,
    required this.inventory,
  }) : super(
          inventory: inventory,
        );

  factory VoidTraderModel.fromJson(Map<String, dynamic> json) {
    return _$VoidTraderModelFromJson(json);
  }

  @override
  final List<InventoryItemModel> inventory;

  Map<String, dynamic> toJson() => _$VoidTraderModelToJson(this);
}

@JsonSerializable()
class InventoryItemModel extends InventoryItem {
  const InventoryItemModel({
    required super.item,
    required super.ducats,
    required super.credits,
  });

  factory InventoryItemModel.fromJson(Map<String, dynamic> json) {
    return _$InventoryItemModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$InventoryItemModelToJson(this);
}
