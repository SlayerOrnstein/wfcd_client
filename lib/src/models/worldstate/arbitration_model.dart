import 'package:json_annotation/json_annotation.dart';

import '../../entities/worldstate/arbitration.dart';

part 'arbitration_model.g.dart';

@JsonSerializable()
class ArbitrationModel extends Arbitration {
  const ArbitrationModel({
    super.activation,
    super.expiry,
    super.node,
    super.enemy,
    super.type,
    this.archwing,
    this.sharkwing,
  }) : super(
          archwingRequired: (archwing ?? false) || (sharkwing ?? false),
        );

  factory ArbitrationModel.fromJson(Map<String, dynamic> json) {
    return _$ArbitrationModelFromJson(json);
  }

  final bool? archwing, sharkwing;

  Map<String, dynamic> toJson() => _$ArbitrationModelToJson(this);
}
