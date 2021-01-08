import 'package:json_annotation/json_annotation.dart';

import '../../entities/worldstate/kuva.dart';

part 'kuva_model.g.dart';

@JsonSerializable()
class KuvaModel extends Kuva {
  const KuvaModel({
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

  factory KuvaModel.fromJson(Map<String, dynamic> json) {
    return _$KuvaModelFromJson(json);
  }

  final bool? archwing, sharkwing;

  Map<String, dynamic> toJson() => _$KuvaModelToJson(this);
}
