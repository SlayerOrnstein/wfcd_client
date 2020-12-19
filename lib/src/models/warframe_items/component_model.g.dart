// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'component_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComponentModel _$ComponentModelFromJson(Map<String, dynamic> json) {
  return ComponentModel(
    uniqueName: json['uniqueName'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    itemCount: json['itemCount'] as num,
    imageName: json['imageName'] as String,
    tradable: json['tradable'] as bool,
    drops: (json['drops'] as List)
        ?.map((e) =>
            e == null ? null : DropModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ComponentModelToJson(ComponentModel instance) =>
    <String, dynamic>{
      'uniqueName': instance.uniqueName,
      'name': instance.name,
      'description': instance.description,
      'imageName': instance.imageName,
      'tradable': instance.tradable,
      'itemCount': instance.itemCount,
      'drops': instance.drops,
    };

DropModel _$DropModelFromJson(Map<String, dynamic> json) {
  return DropModel(
    location: json['location'] as String,
    type: json['type'] as String,
    rarity: json['rarity'] as String,
    rotation: json['rotation'] as String,
    chance: (json['chance'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$DropModelToJson(DropModel instance) => <String, dynamic>{
      'location': instance.location,
      'type': instance.type,
      'rarity': instance.rarity,
      'rotation': instance.rotation,
      'chance': instance.chance,
    };
