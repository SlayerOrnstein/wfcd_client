import '../../../objects.dart';

class Vallis extends CycleObject {
  const Vallis({
    required String id,
    required DateTime activation,
    required DateTime expiry,
    required String state,
    required this.isWarm,
  }) : super(id: id, activation: activation, expiry: expiry, state: state);

  final bool isWarm;

  @override
  bool get getStateBool => isWarm;

  @override
  String get nextState => !isWarm ? 'warm' : 'cold';

  @override
  List<Object?> get props => super.props..add(isWarm);
}
