import 'package:json_annotation/json_annotation.dart';

import '../../entities/worldstate/earth.dart';

part 'earth_model.g.dart';

@JsonSerializable()
class EarthModel extends Earth {
  const EarthModel({
    required String id,
    required DateTime activation,
    required DateTime expiry,
    required String state,
    required bool isDay,
    bool? isCetus,
  }) : super(
          id: id,
          activation: activation,
          expiry: expiry,
          state: state,
          isDay: isDay,
          isCetus: isCetus,
        );

  factory EarthModel.fromJson(Map<String, dynamic> json) {
    return _$EarthModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EarthModelToJson(this);
}
