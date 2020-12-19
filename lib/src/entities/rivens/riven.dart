import 'package:equatable/equatable.dart';

import 'riven_roll.dart';

class Riven extends Equatable {
  const Riven({this.rerolled, this.unrolled});

  final RivenRoll rerolled;
  final RivenRoll unrolled;

  @override
  List<Object> get props => [unrolled, rerolled];
}
