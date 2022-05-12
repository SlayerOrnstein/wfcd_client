import 'package:json_annotation/json_annotation.dart';

import '../../entities/worldstate/nigthwave.dart';

part 'nightwave_model.g.dart';

@JsonSerializable()
class NightwaveModel extends Nightwave {
  const NightwaveModel({
    required super.id,
    required super.activation,
    required super.expiry,
    required super.tag,
    required super.active,
    required int super.season,
    required int super.phase,
    required this.possibleChallenges,
    required this.activeChallenges,
    required super.rewardTypes,
    required super.startString,
  }) : super(
          possibleChallenges: possibleChallenges,
          activeChallenges: activeChallenges,
        );

  factory NightwaveModel.fromJson(Map<String, dynamic> json) {
    return _$NightwaveModelFromJson(json);
  }

  @override
  final List<ChallengeModel> possibleChallenges;

  @override
  final List<ChallengeModel> activeChallenges;

  Map<String, dynamic> toJson() => _$NightwaveModelToJson(this);
}

@JsonSerializable()
class ChallengeModel extends Challenge {
  const ChallengeModel({
    required super.id,
    required super.activation,
    required super.expiry,
    required super.title,
    required super.desc,
    required super.active,
    super.isDaily,
    required super.isElite,
    required super.reputation,
  });

  factory ChallengeModel.fromJson(Map<String, dynamic> json) {
    return _$ChallengeModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ChallengeModelToJson(this);
}
