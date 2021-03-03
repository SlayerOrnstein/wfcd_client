import '../../../objects.dart';

class VoidFissure extends WorldstateObject {
  const VoidFissure({
    required String id,
    required DateTime activation,
    required DateTime expiry,
    required this.node,
    required this.missionType,
    required this.enemy,
    required this.tier,
    required this.tierNum,
    required this.active,
    required this.expired,
  }) : super(id: id, activation: activation, expiry: expiry);

  final String node, missionType, enemy, tier;
  final int tierNum;
  final bool active, expired;

  @override
  List<Object?> get props {
    return super.props
      ..addAll([node, missionType, enemy, tier, tierNum, active, expired]);
  }
}
