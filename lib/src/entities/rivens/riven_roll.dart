import 'package:equatable/equatable.dart';

class RivenRoll extends Equatable {
  const RivenRoll({
    required this.itemType,
    required this.compatibility,
    required this.rerolled,
    required this.avg,
    required this.stddev,
    required this.median,
    required this.min,
    required this.max,
    required this.pop,
  });

  final String itemType, compatibility;
  final bool rerolled;
  final double avg, stddev, median;
  final int min, max, pop;

  @override
  List<Object?> get props {
    return [
      itemType,
      compatibility,
      rerolled,
      avg,
      stddev,
      median,
      min,
      max,
      pop
    ];
  }
}
