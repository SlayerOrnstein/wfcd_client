// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riven_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RivenDataModel _$RivenDataModelFromJson(Map json) {
  return $checkedNew('RivenDataModel', json, () {
    final val = RivenDataModel(
      rerolledModel: $checkedConvert(json, 'rerolled',
          (v) => RivenRollModel.fromJson(Map<String, dynamic>.from(v as Map))),
      unrolledModel: $checkedConvert(json, 'unrolled',
          (v) => RivenRollModel.fromJson(Map<String, dynamic>.from(v as Map))),
    );
    return val;
  }, fieldKeyMap: const {
    'rerolledModel': 'rerolled',
    'unrolledModel': 'unrolled'
  });
}

Map<String, dynamic> _$RivenDataModelToJson(RivenDataModel instance) =>
    <String, dynamic>{
      'rerolled': instance.rerolledModel.toJson(),
      'unrolled': instance.unrolledModel.toJson(),
    };
