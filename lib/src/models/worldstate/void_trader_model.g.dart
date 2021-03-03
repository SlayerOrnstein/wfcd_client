// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'void_trader_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VoidTraderModel _$VoidTraderModelFromJson(Map json) {
  return $checkedNew('VoidTraderModel', json, () {
    final val = VoidTraderModel(
      id: $checkedConvert(json, 'id', (v) => v as String),
      activation: $checkedConvert(
          json, 'activation', (v) => DateTime.parse(v as String)),
      expiry:
          $checkedConvert(json, 'expiry', (v) => DateTime.parse(v as String)),
      character: $checkedConvert(json, 'character', (v) => v as String),
      location: $checkedConvert(json, 'location', (v) => v as String),
      active: $checkedConvert(json, 'active', (v) => v as bool),
      inventory: $checkedConvert(
          json,
          'inventory',
          (v) => (v as List<dynamic>)
              .map((e) => InventoryItemModel.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList()),
    );
    return val;
  });
}

Map<String, dynamic> _$VoidTraderModelToJson(VoidTraderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'character': instance.character,
      'location': instance.location,
      'active': instance.active,
      'inventory': instance.inventory.map((e) => e.toJson()).toList(),
    };

InventoryItemModel _$InventoryItemModelFromJson(Map json) {
  return $checkedNew('InventoryItemModel', json, () {
    final val = InventoryItemModel(
      item: $checkedConvert(json, 'item', (v) => v as String),
      ducats: $checkedConvert(json, 'ducats', (v) => v as int),
      credits: $checkedConvert(json, 'credits', (v) => v as int),
    );
    return val;
  });
}

Map<String, dynamic> _$InventoryItemModelToJson(InventoryItemModel instance) =>
    <String, dynamic>{
      'item': instance.item,
      'ducats': instance.ducats,
      'credits': instance.credits,
    };
