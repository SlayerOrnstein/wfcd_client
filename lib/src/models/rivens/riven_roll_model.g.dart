// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riven_roll_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RivenRollModel _$RivenRollModelFromJson(Map json) => $checkedCreate(
      'RivenRollModel',
      json,
      ($checkedConvert) {
        final val = RivenRollModel(
          itemType: $checkedConvert('itemType', (v) => v as String),
          compatibility: $checkedConvert('compatibility', (v) => v as String),
          rerolled: $checkedConvert('rerolled', (v) => v as bool),
          avg: $checkedConvert('avg', (v) => (v as num).toDouble()),
          stddev: $checkedConvert('stddev', (v) => (v as num).toDouble()),
          median: $checkedConvert('median', (v) => (v as num).toDouble()),
          min: $checkedConvert('min', (v) => v as int),
          max: $checkedConvert('max', (v) => v as int),
          pop: $checkedConvert('pop', (v) => v as int),
        );
        return val;
      },
    );

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
