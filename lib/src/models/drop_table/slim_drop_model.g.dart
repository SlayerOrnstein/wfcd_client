// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slim_drop_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SlimDropModel _$SlimDropModelFromJson(Map json) => $checkedCreate(
      'SlimDropModel',
      json,
      ($checkedConvert) {
        final val = SlimDropModel(
          place: $checkedConvert('place', (v) => v as String),
          item: $checkedConvert('item', (v) => v as String),
          rarity: $checkedConvert('rarity', (v) => v as String),
          dropchance: $checkedConvert('chance', (v) => v),
        );
        return val;
      },
      fieldKeyMap: const {'dropchance': 'chance'},
    );

Map<String, dynamic> _$SlimDropModelToJson(SlimDropModel instance) =>
    <String, dynamic>{
      'place': instance.place,
      'item': instance.item,
      'rarity': instance.rarity,
      'chance': instance.dropchance,
    };
