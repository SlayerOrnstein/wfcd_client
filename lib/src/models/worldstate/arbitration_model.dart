import 'package:json_annotation/json_annotation.dart';

import '../../entities/worldstate/arbitration.dart';

part 'arbitration_model.g.dart';

@JsonSerializable()
class ArbitrationModel extends Arbitration {
  const ArbitrationModel({
    required DateTime activation,
    required DateTime expiry,
    required String node,
    required String enemy,
    required String type,
    this.archwing,
    this.sharkwing,
  }) : super(
          activation: activation,
          expiry: expiry,
          node: node,
          enemy: enemy,
          type: type,
          archwingRequired: (archwing ?? false) || (sharkwing ?? false),
        );

  factory ArbitrationModel.fromJson(Map<String, dynamic> json) {
    return _$ArbitrationModelFromJson(json);
  }

  final bool? archwing, sharkwing;

  Map<String, dynamic> toJson() => _$ArbitrationModelToJson(this);
}
