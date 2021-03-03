// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'darvo_deal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DarvoDealModel _$DarvoDealModelFromJson(Map json) {
  return $checkedNew('DarvoDealModel', json, () {
    final val = DarvoDealModel(
      id: $checkedConvert(json, 'id', (v) => v as String),
      activation: $checkedConvert(
          json, 'activation', (v) => DateTime.parse(v as String)),
      expiry:
          $checkedConvert(json, 'expiry', (v) => DateTime.parse(v as String)),
      item: $checkedConvert(json, 'item', (v) => v as String),
      originalPrice: $checkedConvert(json, 'originalPrice', (v) => v as int),
      salePrice: $checkedConvert(json, 'salePrice', (v) => v as int),
      total: $checkedConvert(json, 'total', (v) => v as int),
      sold: $checkedConvert(json, 'sold', (v) => v as int),
      discount: $checkedConvert(json, 'discount', (v) => v as int),
    );
    return val;
  });
}

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
