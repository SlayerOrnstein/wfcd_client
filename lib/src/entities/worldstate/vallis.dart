import '../../../objects.dart';

class Vallis extends CycleObject {
  const Vallis({
    required super.id,
    required super.activation,
    required super.expiry,
    required super.state,
    required this.isWarm,
  });

  final bool isWarm;

  @override
  bool get getStateBool => isWarm;

  @override
  String get nextState => !isWarm ? 'warm' : 'cold';

  @override
  List<Object?> get props => super.props..add(isWarm);
}
