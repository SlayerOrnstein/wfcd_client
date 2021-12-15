// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'void_trader_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VoidTraderModel _$VoidTraderModelFromJson(Map json) => $checkedCreate(
      'VoidTraderModel',
      json,
      ($checkedConvert) {
        final val = VoidTraderModel(
          id: $checkedConvert('id', (v) => v as String),
          activation:
              $checkedConvert('activation', (v) => DateTime.parse(v as String)),
          expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
          character: $checkedConvert('character', (v) => v as String),
          location: $checkedConvert('location', (v) => v as String),
          active: $checkedConvert('active', (v) => v as bool),
          inventory: $checkedConvert(
              'inventory',
              (v) => (v as List<dynamic>)
                  .map((e) => InventoryItemModel.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
    );

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

InventoryItemModel _$InventoryItemModelFromJson(Map json) => $checkedCreate(
      'InventoryItemModel',
      json,
      ($checkedConvert) {
        final val = InventoryItemModel(
          item: $checkedConvert('item', (v) => v as String),
          ducats: $checkedConvert('ducats', (v) => v as int),
          credits: $checkedConvert('credits', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$InventoryItemModelToJson(InventoryItemModel instance) =>
    <String, dynamic>{
      'item': instance.item,
      'ducats': instance.ducats,
      'credits': instance.credits,
    };
