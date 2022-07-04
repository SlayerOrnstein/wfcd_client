// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sol_node_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SolNodeModel _$SolNodeModelFromJson(Map json) => $checkedCreate(
      'SolNodeModel',
      json,
      ($checkedConvert) {
        final val = SolNodeModel(
          uniqueName: $checkedConvert('uniqueName', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
          category: $checkedConvert('category', (v) => v as String),
          tradable: $checkedConvert('tradable', (v) => v as bool?),
          systemIndex: $checkedConvert('systemIndex', (v) => v as int),
          systemName: $checkedConvert('systemName', (v) => v as String),
          masterReq: $checkedConvert('masterReq', (v) => v as int),
          missionIndex: $checkedConvert('missionIndex', (v) => v as int),
          factionIndex: $checkedConvert('factionIndex', (v) => v as int),
          minEnemyLevel: $checkedConvert('minEnemyLevel', (v) => v as int),
          maxEnemyLevel: $checkedConvert('maxEnemyLevel', (v) => v as int),
          patchlogs: $checkedConvert(
              'patchlogs',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => PatchlogModel.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
    );

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
