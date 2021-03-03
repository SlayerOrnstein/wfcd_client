// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slim_drop_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SlimDropModel _$SlimDropModelFromJson(Map json) {
  return $checkedNew('SlimDropModel', json, () {
    final val = SlimDropModel(
      place: $checkedConvert(json, 'place', (v) => v as String),
      item: $checkedConvert(json, 'item', (v) => v as String),
      rarity: $checkedConvert(json, 'rarity', (v) => v as String),
      dropchance: $checkedConvert(json, 'chance', (v) => v),
    );
    return val;
  }, fieldKeyMap: const {'dropchance': 'chance'});
}

Map<String, dynamic> _$SlimDropModelToJson(SlimDropModel instance) =>
    <String, dynamic>{
      'place': instance.place,
      'item': instance.item,
      'rarity': instance.rarity,
      'chance': instance.dropchance,
    };
