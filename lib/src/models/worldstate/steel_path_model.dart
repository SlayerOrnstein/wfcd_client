import 'package:json_annotation/json_annotation.dart';

import '../../../entities.dart';

part 'steel_path_model.g.dart';

@JsonSerializable()
class SteelPathMdoel extends SteelPath {
  const SteelPathMdoel({
    required DateTime activation,
    required DateTime expiry,
    required String currentReward,
    required List<String> rotation,
  }) : super(
          activation: activation,
          expiry: expiry,
          currentReward: currentReward,
          rotation: rotation,
        );

  factory SteelPathMdoel.fromJson(Map<String, dynamic> json) {
    return _$SteelPathMdoelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SteelPathMdoelToJson(this);
}
