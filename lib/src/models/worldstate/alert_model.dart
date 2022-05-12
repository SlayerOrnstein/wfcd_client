import 'package:json_annotation/json_annotation.dart';

import '../../entities/worldstate/alert.dart';
import 'mission_model.dart';

part 'alert_model.g.dart';

@JsonSerializable()
class AlertModel extends Alert {
  const AlertModel({
    required super.id,
    required super.activation,
    required super.expiry,
    required super.active,
    required this.mission,
  }) : super(
          mission: mission,
        );

  factory AlertModel.fromJson(Map<String, dynamic> json) {
    return _$AlertModelFromJson(json);
  }

  @override
  final MissionModel mission;

  Map<String, dynamic> toJson() => _$AlertModelToJson(this);
}
