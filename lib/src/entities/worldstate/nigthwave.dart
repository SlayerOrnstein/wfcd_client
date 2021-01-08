import '../../../objects.dart';

class Nightwave extends WorldstateObject {
  const Nightwave({
    required String id,
    required DateTime activation,
    required DateTime expiry,
    required this.startString,
    required this.tag,
    required this.active,
    required this.season,
    required this.phase,
    required this.possibleChallenges,
    required this.activeChallenges,
    required this.rewardTypes,
  }) : super(id: id, activation: activation, expiry: expiry);

  final String startString, tag;
  final bool active;
  final num season, phase;

  final List<Challenge> possibleChallenges, activeChallenges;
  final List<String> rewardTypes;

  /// Filters [activeChallenges] and exports only daily challenges
  List<Challenge> get daily {
    return activeChallenges.where((c) => c.isDaily ?? false).toList()
      ..sort((a, b) => a.expiry!.compareTo(b.expiry!));
  }

  /// Filters [activeChallenges] and exports only weekly challenges
  List<Challenge> get weekly {
    return activeChallenges.where((c) => c.isDaily == null).toList()
      ..sort((a, b) {
        if (a.isElite) {
          return 0;
        } else {
          return 1;
        }
      });
  }

  @override
  List<Object?> get props {
    return super.props
      ..addAll([
        startString,
        tag,
        active,
        season,
        phase,
        possibleChallenges,
        activeChallenges,
        rewardTypes,
      ]);
  }
}

class Challenge extends WorldstateObject {
  const Challenge({
    required String id,
    required DateTime activation,
    required DateTime expiry,
    required this.title,
    required this.desc,
    required this.active,
    this.isDaily,
    required this.isElite,
    required this.reputation,
  }) : super(id: id, activation: activation, expiry: expiry);

  final String title, desc;
  final bool active, isElite;
  final bool? isDaily;
  final int reputation;

  @override
  List<Object?> get props {
    return super.props
      ..addAll([title, desc, active, isDaily, isElite, reputation]);
  }
}
