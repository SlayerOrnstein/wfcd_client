import 'package:json_annotation/json_annotation.dart';

import '../../entities/worldstate/vallis.dart';

part 'vallis_model.g.dart';

@JsonSerializable()
class VallisModel extends Vallis {
  const VallisModel({
    required super.id,
    required super.activation,
    required super.expiry,
    required super.state,
    required super.isWarm,
  });

  factory VallisModel.fromJson(Map<String, dynamic> json) {
    return _$VallisModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VallisModelToJson(this);
}
