import 'package:json_annotation/json_annotation.dart';

import '../../entities/worldstate/nigthwave.dart';

part 'nightwave_model.g.dart';

@JsonSerializable()
class NightwaveModel extends Nightwave {
  const NightwaveModel({
    required String id,
    required DateTime activation,
    required DateTime expiry,
    required String tag,
    required bool active,
    required int season,
    required int phase,
    required this.possibleChallenges,
    required this.activeChallenges,
    required List<String> rewardTypes,
    required String startString,
  }) : super(
          id: id,
          activation: activation,
          expiry: expiry,
          tag: tag,
          active: active,
          season: season,
          phase: phase,
          rewardTypes: rewardTypes,
          possibleChallenges: possibleChallenges,
          activeChallenges: activeChallenges,
          startString: startString,
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
    required String id,
    required DateTime activation,
    required DateTime expiry,
    required String title,
    required String desc,
    required bool active,
    bool? isDaily,
    required bool isElite,
    required int reputation,
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
