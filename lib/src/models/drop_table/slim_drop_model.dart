import 'package:json_annotation/json_annotation.dart';

import '../../entities/drop_table/slim_drop.dart';

part 'slim_drop_model.g.dart';

@JsonSerializable()
class SlimDropModel extends SlimDrop {
  const SlimDropModel({
    required super.place,
    required super.item,
    required super.rarity,
    required this.dropchance,
  }) : super(
          dropChance: dropchance,
        );

  factory SlimDropModel.fromJson(Map<String, dynamic> json) {
    return _$SlimDropModelFromJson(json);
  }

  @JsonKey(name: 'chance')
  final dynamic dropchance;

  Map<String, dynamic> toJson() => _$SlimDropModelToJson(this);
}
