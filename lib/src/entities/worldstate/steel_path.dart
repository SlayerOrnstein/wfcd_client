import '../../../objects.dart';

class SteelPath extends WorldstateObject {
  const SteelPath({
    required DateTime activation,
    required DateTime expiry,
    required this.currentReward,
    required this.rotation,
  }) : super(activation: activation, expiry: expiry);

  final String currentReward;
  final List<String> rotation;

  @override
  List<Object?> get props => super.props..addAll([currentReward, rotation]);
}
