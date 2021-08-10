// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'component_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComponentModel _$ComponentModelFromJson(Map json) => $checkedCreate(
      'ComponentModel',
      json,
      ($checkedConvert) {
        final val = ComponentModel(
          uniqueName: $checkedConvert('uniqueName', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          itemCount: $checkedConvert('itemCount', (v) => v as int),
          imageName: $checkedConvert('imageName', (v) => v as String),
          tradable: $checkedConvert('tradable', (v) => v as bool),
          type: $checkedConvert('type', (v) => v as String?),
          category: $checkedConvert('category', (v) => v as String?),
          drops: $checkedConvert(
              'drops',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      DropModel.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$ComponentModelToJson(ComponentModel instance) =>
    <String, dynamic>{
      'uniqueName': instance.uniqueName,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'imageName': instance.imageName,
      'category': instance.category,
      'tradable': instance.tradable,
      'itemCount': instance.itemCount,
      'drops': instance.drops?.map((e) => e.toJson()).toList(),
    };

DropModel _$DropModelFromJson(Map json) => $checkedCreate(
      'DropModel',
      json,
      ($checkedConvert) {
        final val = DropModel(
          location: $checkedConvert('location', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
          rarity: $checkedConvert('rarity', (v) => v as String),
          rotation: $checkedConvert('rotation', (v) => v as String?),
          chance: $checkedConvert('chance', (v) => (v as num?)?.toDouble()),
        );
        return val;
      },
    );

Map<String, dynamic> _$DropModelToJson(DropModel instance) => <String, dynamic>{
      'location': instance.location,
      'type': instance.type,
      'rarity': instance.rarity,
      'rotation': instance.rotation,
      'chance': instance.chance,
    };
