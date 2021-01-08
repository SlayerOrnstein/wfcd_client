// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riven_roll_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RivenRollModel _$RivenRollModelFromJson(Map json) {
  return $checkedNew('RivenRollModel', json, () {
    final val = RivenRollModel(
      itemType: $checkedConvert(json, 'itemType', (v) => v as String),
      compatibility: $checkedConvert(json, 'compatibility', (v) => v as String),
      rerolled: $checkedConvert(json, 'rerolled', (v) => v as bool),
      avg: $checkedConvert(json, 'avg', (v) => (v as num).toDouble()),
      stddev: $checkedConvert(json, 'stddev', (v) => (v as num).toDouble()),
      median: $checkedConvert(json, 'median', (v) => (v as num).toDouble()),
      min: $checkedConvert(json, 'min', (v) => v as int),
      max: $checkedConvert(json, 'max', (v) => v as int),
      pop: $checkedConvert(json, 'pop', (v) => v as int),
    );
    return val;
  });
}

Map<String, dynamic> _$RivenRollModelToJson(RivenRollModel instance) =>
    <String, dynamic>{
      'itemType': instance.itemType,
      'compatibility': instance.compatibility,
      'rerolled': instance.rerolled,
      'avg': instance.avg,
      'stddev': instance.stddev,
      'median': instance.median,
      'min': instance.min,
      'max': instance.max,
      'pop': instance.pop,
    };
