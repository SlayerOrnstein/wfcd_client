import 'package:json_annotation/json_annotation.dart';

import '../../entities/worldstate/vallis.dart';

part 'vallis_model.g.dart';

@JsonSerializable()
class VallisModel extends Vallis {
  const VallisModel({
    required String id,
    required DateTime activation,
    required DateTime expiry,
    required String state,
    required bool isWarm,
  }) : super(
          id: id,
          activation: activation,
          expiry: expiry,
          state: state,
          isWarm: isWarm,
        );

  factory VallisModel.fromJson(Map<String, dynamic> json) {
    return _$VallisModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VallisModelToJson(this);
}
