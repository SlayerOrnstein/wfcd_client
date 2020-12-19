// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invasion_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvasionModel _$InvasionModelFromJson(Map<String, dynamic> json) {
  return InvasionModel(
    id: json['id'] as String,
    activation: json['activation'] == null
        ? null
        : DateTime.parse(json['activation'] as String),
    expiry: json['expiry'] == null
        ? null
        : DateTime.parse(json['expiry'] as String),
    node: json['node'] as String,
    desc: json['desc'] as String,
    attackingFaction: json['attackingFaction'] as String,
    defendingFaction: json['defendingFaction'] as String,
    attacker: json['attacker'] == null
        ? null
        : FactionModel.fromJson(json['attacker'] as Map<String, dynamic>),
    defender: json['defender'] == null
        ? null
        : FactionModel.fromJson(json['defender'] as Map<String, dynamic>),
    eta: json['eta'] as String,
    vsInfestation: json['vsInfestation'] as bool,
    completed: json['completed'] as bool,
    completion: (json['completion'] as num)?.toDouble(),
    count: json['count'] as int,
  );
}

Map<String, dynamic> _$InvasionModelToJson(InvasionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'node': instance.node,
      'desc': instance.desc,
      'attackingFaction': instance.attackingFaction,
      'defendingFaction': instance.defendingFaction,
      'eta': instance.eta,
      'vsInfestation': instance.vsInfestation,
      'completed': instance.completed,
      'completion': instance.completion,
      'count': instance.count,
      'attacker': instance.attacker,
      'defender': instance.defender,
    };

FactionModel _$FactionModelFromJson(Map<String, dynamic> json) {
  return FactionModel(
    reward: json['reward'] == null
        ? null
        : RewardModel.fromJson(json['reward'] as Map<String, dynamic>),
    faction: json['faction'] as String,
    factionKey: json['factionKey'] as String,
  );
}

Map<String, dynamic> _$FactionModelToJson(FactionModel instance) =>
    <String, dynamic>{
      'faction': instance.faction,
      'factionKey': instance.factionKey,
      'reward': instance.reward,
    };
