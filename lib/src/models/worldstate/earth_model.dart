import 'package:json_annotation/json_annotation.dart';

import '../../entities/worldstate/earth.dart';

part 'earth_model.g.dart';

@JsonSerializable()
class EarthModel extends Earth {
  const EarthModel({
    required super.id,
    required super.activation,
    required super.expiry,
    required super.state,
    required super.isDay,
    super.isCetus,
  });

  factory EarthModel.fromJson(Map<String, dynamic> json) {
    return _$EarthModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EarthModelToJson(this);
}
