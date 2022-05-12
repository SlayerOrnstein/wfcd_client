import 'package:json_annotation/json_annotation.dart';

import '../../entities/warframe_items/component.dart';

part 'component_model.g.dart';

@JsonSerializable()
class ComponentModel extends Component {
  const ComponentModel({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.itemCount,
    required super.imageName,
    required super.tradable,
    super.type,
    super.category,
    this.drops,
  }) : super(
          drops: drops,
        );

  factory ComponentModel.fromJson(Map<String, dynamic> json) =>
      _$ComponentModelFromJson(json);

  @override
  final List<DropModel>? drops;

  Map<String, dynamic> toJson() => _$ComponentModelToJson(this);
}

@JsonSerializable()
class DropModel extends Drop {
  const DropModel({
    required super.location,
    required super.type,
    required super.rarity,
    super.rotation,
    super.chance,
  });

  factory DropModel.fromJson(Map<String, dynamic> json) {
    return _$DropModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DropModelToJson(this);
}
