// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sol_node_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SolNodeModel _$SolNodeModelFromJson(Map json) {
  return $checkedNew('SolNodeModel', json, () {
    final val = SolNodeModel(
      uniqueName: $checkedConvert(json, 'uniqueName', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
      description: $checkedConvert(json, 'description', (v) => v as String),
      type: $checkedConvert(json, 'type', (v) => v as String),
      category: $checkedConvert(json, 'category', (v) => v as String),
      tradable: $checkedConvert(json, 'tradable', (v) => v as bool),
      systemIndex: $checkedConvert(json, 'systemIndex', (v) => v as int),
      systemName: $checkedConvert(json, 'systemName', (v) => v as String),
      masterReq: $checkedConvert(json, 'masterReq', (v) => v as int),
      missionIndex: $checkedConvert(json, 'missionIndex', (v) => v as int),
      factionIndex: $checkedConvert(json, 'factionIndex', (v) => v as int),
      minEnemyLevel: $checkedConvert(json, 'minEnemyLevel', (v) => v as int),
      maxEnemyLevel: $checkedConvert(json, 'maxEnemyLevel', (v) => v as int),
      patchlogs: $checkedConvert(
          json,
          'patchlogs',
          (v) => (v as List<dynamic>?)
              ?.map((e) =>
                  PatchlogModel.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList()),
    );
    return val;
  });
}

Map<String, dynamic> _$SolNodeModelToJson(SolNodeModel instance) =>
    <String, dynamic>{
      'uniqueName': instance.uniqueName,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'category': instance.category,
      'tradable': instance.tradable,
      'systemIndex': instance.systemIndex,
      'systemName': instance.systemName,
      'masterReq': instance.masterReq,
      'missionIndex': instance.missionIndex,
      'factionIndex': instance.factionIndex,
      'minEnemyLevel': instance.minEnemyLevel,
      'maxEnemyLevel': instance.maxEnemyLevel,
      'patchlogs': instance.patchlogs?.map((e) => e.toJson()).toList(),
    };
