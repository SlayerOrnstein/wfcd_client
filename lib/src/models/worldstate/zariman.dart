import 'package:json_annotation/json_annotation.dart';

import '../../entities/worldstate/zariman.dart';

part 'zariman.g.dart';

@JsonSerializable()
class ZarimanModel extends Zariman {
  const ZarimanModel({
    required super.id,
    required super.activation,
    required super.expiry,
    required super.isCorpus,
    required super.state,
  });

  factory ZarimanModel.fromJson(Map<String, dynamic> json) {
    return _$ZarimanModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ZarimanModelToJson(this);
}
