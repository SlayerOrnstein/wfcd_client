// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invasion_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvasionModel _$InvasionModelFromJson(Map json) => $checkedCreate(
      'InvasionModel',
      json,
      ($checkedConvert) {
        final val = InvasionModel(
          id: $checkedConvert('id', (v) => v as String),
          activation:
              $checkedConvert('activation', (v) => DateTime.parse(v as String)),
          node: $checkedConvert('node', (v) => v as String),
          nodeKey: $checkedConvert('nodeKey', (v) => v as String),
          desc: $checkedConvert('desc', (v) => v as String),
          attackingFaction:
              $checkedConvert('attackingFaction', (v) => v as String),
          defendingFaction:
              $checkedConvert('defendingFaction', (v) => v as String),
          attacker: $checkedConvert(
              'attacker',
              (v) =>
                  FactionModel.fromJson(Map<String, dynamic>.from(v as Map))),
          defender: $checkedConvert(
              'defender',
              (v) =>
                  FactionModel.fromJson(Map<String, dynamic>.from(v as Map))),
          eta: $checkedConvert('eta', (v) => v as String),
          vsInfestation: $checkedConvert('vsInfestation', (v) => v as bool),
          completed: $checkedConvert('completed', (v) => v as bool),
          completion:
              $checkedConvert('completion', (v) => (v as num).toDouble()),
          count: $checkedConvert('count', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$InvasionModelToJson(InvasionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'node': instance.node,
      'desc': instance.desc,
      'attackingFaction': instance.attackingFaction,
      'defendingFaction': instance.defendingFaction,
      'eta': instance.eta,
      'nodeKey': instance.nodeKey,
      'vsInfestation': instance.vsInfestation,
      'completed': instance.completed,
      'completion': instance.completion,
      'count': instance.count,
      'attacker': instance.attacker.toJson(),
      'defender': instance.defender.toJson(),
    };

FactionModel _$FactionModelFromJson(Map json) => $checkedCreate(
      'FactionModel',
      json,
      ($checkedConvert) {
        final val = FactionModel(
          reward: $checkedConvert('reward',
              (v) => RewardModel.fromJson(Map<String, dynamic>.from(v as Map))),
          faction: $checkedConvert('faction', (v) => v as String),
          factionKey: $checkedConvert('factionKey', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$FactionModelToJson(FactionModel instance) =>
    <String, dynamic>{
      'faction': instance.faction,
      'factionKey': instance.factionKey,
      'reward': instance.reward.toJson(),
    };
