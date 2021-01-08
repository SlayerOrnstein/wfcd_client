// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RewardModel _$RewardModelFromJson(Map json) {
  return $checkedNew('RewardModel', json, () {
    final val = RewardModel(
      itemString: $checkedConvert(json, 'itemString', (v) => v as String),
      thumbnail: $checkedConvert(json, 'thumbnail', (v) => v as String),
      asString: $checkedConvert(json, 'asString', (v) => v as String),
      credits: $checkedConvert(json, 'credits', (v) => v as int),
      countedItems: $checkedConvert(
          json,
          'countedItems',
          (v) => (v as List<dynamic>)
              .map((e) => CountedItemModel.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList()),
    );
    return val;
  });
}

Map<String, dynamic> _$RewardModelToJson(RewardModel instance) =>
    <String, dynamic>{
      'itemString': instance.itemString,
      'thumbnail': instance.thumbnail,
      'asString': instance.asString,
      'credits': instance.credits,
      'countedItems': instance.countedItems.map((e) => e.toJson()).toList(),
    };

CountedItemModel _$CountedItemModelFromJson(Map json) {
  return $checkedNew('CountedItemModel', json, () {
    final val = CountedItemModel(
      count: $checkedConvert(json, 'count', (v) => v as int),
      type: $checkedConvert(json, 'type', (v) => v as String),
    );
    return val;
  });
}

Map<String, dynamic> _$CountedItemModelToJson(CountedItemModel instance) =>
    <String, dynamic>{
      'count': instance.count,
      'type': instance.type,
    };
