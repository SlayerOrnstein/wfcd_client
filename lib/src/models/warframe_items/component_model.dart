import 'package:json_annotation/json_annotation.dart';

import '../../entities/warframe_items/component.dart';

part 'component_model.g.dart';

@JsonSerializable()
class ComponentModel extends Component {
  const ComponentModel({
    required String uniqueName,
    required String name,
    required String description,
    required int itemCount,
    required String imageName,
    required bool tradable,
    String? type,
    String? category,
    this.drops,
  }) : super(
          uniqueName: uniqueName,
          name: name,
          description: description,
          itemCount: itemCount,
          imageName: imageName,
          tradable: tradable,
          type: type,
          category: category,
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
    required String location,
    required String type,
    required String rarity,
    String? rotation,
    double? chance,
  }) : super(
          location: location,
          type: type,
          rarity: rarity,
          rotation: rotation,
          chance: chance,
        );

  factory DropModel.fromJson(Map<String, dynamic> json) {
    return _$DropModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DropModelToJson(this);
}
