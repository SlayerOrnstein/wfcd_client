import 'package:json_annotation/json_annotation.dart';

import '../../entities/warframe_items/component.dart';

part 'component_model.g.dart';

@JsonSerializable()
class ComponentModel extends Component {
  const ComponentModel({
    String uniqueName,
    String name,
    String description,
    num itemCount,
    String imageName,
    bool tradable,
    this.drops,
  }) : super(
          uniqueName: uniqueName,
          name: name,
          description: description,
          itemCount: itemCount,
          imageName: imageName,
          tradable: tradable,
          drops: drops,
        );

  factory ComponentModel.fromJson(Map<String, dynamic> json) =>
      _$ComponentModelFromJson(json);

  @override
  final List<DropModel> drops;

  Map<String, dynamic> toJson() => _$ComponentModelToJson(this);
}

@JsonSerializable()
class DropModel extends Drop {
  const DropModel({
    String location,
    String type,
    String rarity,
    String rotation,
    double chance,
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
