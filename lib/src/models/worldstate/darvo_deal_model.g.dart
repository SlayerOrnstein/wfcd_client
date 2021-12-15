// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'darvo_deal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DarvoDealModel _$DarvoDealModelFromJson(Map json) => $checkedCreate(
      'DarvoDealModel',
      json,
      ($checkedConvert) {
        final val = DarvoDealModel(
          id: $checkedConvert('id', (v) => v as String),
          activation:
              $checkedConvert('activation', (v) => DateTime.parse(v as String)),
          expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
          item: $checkedConvert('item', (v) => v as String),
          originalPrice: $checkedConvert('originalPrice', (v) => v as int),
          salePrice: $checkedConvert('salePrice', (v) => v as int),
          total: $checkedConvert('total', (v) => v as int),
          sold: $checkedConvert('sold', (v) => v as int),
          discount: $checkedConvert('discount', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$DarvoDealModelToJson(DarvoDealModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'item': instance.item,
      'originalPrice': instance.originalPrice,
      'salePrice': instance.salePrice,
      'total': instance.total,
      'sold': instance.sold,
      'discount': instance.discount,
    };
