import '../../objects.dart';

class ExternalMission extends WorldstateObject {
  const ExternalMission({
    DateTime? activation,
    DateTime? expiry,
    this.node,
    this.enemy,
    this.type,
    required this.archwingRequired,
  }) : super(activation: activation, expiry: expiry);

  /// The node this mission takes place in.
  final String? node;

  /// The enemy faction on the given [node].
  final String? enemy;

  /// The mission type on the given [node]
  final String? type;

  /// Whether the [node] requires players to have an archwing or not.
  final bool archwingRequired;

  @override
  List<Object?> get props {
    return super.props..addAll([node, enemy, type, archwingRequired]);
  }
}
