// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RewardModel _$RewardModelFromJson(Map json) => $checkedCreate(
      'RewardModel',
      json,
      ($checkedConvert) {
        final val = RewardModel(
          itemString: $checkedConvert('itemString', (v) => v as String),
          thumbnail: $checkedConvert('thumbnail', (v) => v as String),
          asString: $checkedConvert('asString', (v) => v as String),
          credits: $checkedConvert('credits', (v) => v as int),
          countedItems: $checkedConvert(
              'countedItems',
              (v) => (v as List<dynamic>)
                  .map((e) => CountedItemModel.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$RewardModelToJson(RewardModel instance) =>
    <String, dynamic>{
      'itemString': instance.itemString,
      'thumbnail': instance.thumbnail,
      'asString': instance.asString,
      'credits': instance.credits,
      'countedItems': instance.countedItems.map((e) => e.toJson()).toList(),
    };

CountedItemModel _$CountedItemModelFromJson(Map json) => $checkedCreate(
      'CountedItemModel',
      json,
      ($checkedConvert) {
        final val = CountedItemModel(
          count: $checkedConvert('count', (v) => v as int),
          type: $checkedConvert('type', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$CountedItemModelToJson(CountedItemModel instance) =>
    <String, dynamic>{
      'count': instance.count,
      'type': instance.type,
    };
