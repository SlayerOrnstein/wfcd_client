import 'package:json_annotation/json_annotation.dart';

import '../../entities/worldstate/nigthwave.dart';

part 'nightwave_model.g.dart';

@JsonSerializable()
class NightwaveModel extends Nightwave {
  const NightwaveModel({
    String id,
    DateTime activation,
    DateTime expiry,
    String tag,
    bool active,
    int season,
    int phase,
    this.possibleChallenges,
    this.activeChallenges,
    List<String> rewardTypes,
  }) : super(
          id: id,
          activation: activation,
          expiry: expiry,
          tag: tag,
          active: active,
          season: season,
          phase: phase,
          rewardTypes: rewardTypes,
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
    String id,
    DateTime activation,
    DateTime expiry,
    String title,
    String desc,
    bool active,
    bool isDaily,
    bool isElite,
    int reputation,
  }) : super(
          id: id,
          activation: activation,
          expiry: expiry,
          title: title,
          desc: desc,
          active: active,
          isDaily: isDaily,
          isElite: isElite,
          reputation: reputation,
        );

  factory ChallengeModel.fromJson(Map<String, dynamic> json) {
    return _$ChallengeModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ChallengeModelToJson(this);
}
