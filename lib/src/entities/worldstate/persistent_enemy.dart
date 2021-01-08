import '../../../objects.dart';

class PersistentEnemy extends WorldstateObject {
  const PersistentEnemy({
    required String id,
    required DateTime activation,
    required DateTime expiry,
    required this.agentType,
    required this.locationTag,
    required this.lastDiscoveredAt,
    required this.lastDiscoveredTime,
    required this.fleeDamage,
    required this.rank,
    required this.healthPercent,
    required this.isDiscovered,
    required this.isUsingTicketing,
  }) : super(id: id, activation: activation, expiry: expiry);

  final String agentType, locationTag, lastDiscoveredAt;
  final DateTime lastDiscoveredTime;
  final int fleeDamage, rank;
  final double healthPercent;
  final bool isDiscovered, isUsingTicketing;

  @override
  List<Object?> get props {
    return super.props
      ..addAll([
        agentType,
        locationTag,
        lastDiscoveredAt,
        lastDiscoveredTime,
        fleeDamage,
        rank,
        healthPercent,
        isDiscovered,
        isUsingTicketing
      ]);
  }
}
