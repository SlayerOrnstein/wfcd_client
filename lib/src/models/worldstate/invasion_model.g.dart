// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invasion_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvasionModel _$InvasionModelFromJson(Map json) {
  return $checkedNew('InvasionModel', json, () {
    final val = InvasionModel(
      id: $checkedConvert(json, 'id', (v) => v as String),
      activation: $checkedConvert(
          json, 'activation', (v) => DateTime.parse(v as String)),
      node: $checkedConvert(json, 'node', (v) => v as String),
      nodeKey: $checkedConvert(json, 'nodeKey', (v) => v as String),
      desc: $checkedConvert(json, 'desc', (v) => v as String),
      attackingFaction:
          $checkedConvert(json, 'attackingFaction', (v) => v as String),
      defendingFaction:
          $checkedConvert(json, 'defendingFaction', (v) => v as String),
      attacker: $checkedConvert(json, 'attacker',
          (v) => FactionModel.fromJson(Map<String, dynamic>.from(v as Map))),
      defender: $checkedConvert(json, 'defender',
          (v) => FactionModel.fromJson(Map<String, dynamic>.from(v as Map))),
      eta: $checkedConvert(json, 'eta', (v) => v as String),
      vsInfestation: $checkedConvert(json, 'vsInfestation', (v) => v as bool),
      completed: $checkedConvert(json, 'completed', (v) => v as bool),
      completion:
          $checkedConvert(json, 'completion', (v) => (v as num).toDouble()),
      count: $checkedConvert(json, 'count', (v) => v as int),
    );
    return val;
  });
}

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

FactionModel _$FactionModelFromJson(Map json) {
  return $checkedNew('FactionModel', json, () {
    final val = FactionModel(
      reward: $checkedConvert(json, 'reward',
          (v) => RewardModel.fromJson(Map<String, dynamic>.from(v as Map))),
      faction: $checkedConvert(json, 'faction', (v) => v as String),
      factionKey: $checkedConvert(json, 'factionKey', (v) => v as String),
    );
    return val;
  });
}

Map<String, dynamic> _$FactionModelToJson(FactionModel instance) =>
    <String, dynamic>{
      'faction': instance.faction,
      'factionKey': instance.factionKey,
      'reward': instance.reward.toJson(),
    };
