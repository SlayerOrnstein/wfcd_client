import '../../../objects.dart';

class Earth extends CycleObject {
  const Earth({
    required String id,
    required DateTime activation,
    required DateTime expiry,
    required String state,
    required this.isDay,
    this.isCetus,
  }) : super(id: id, activation: activation, expiry: expiry, state: state);

  final bool isDay;
  final bool? isCetus;

  @override
  bool get getStateBool => isDay;

  @override
  String get nextState => !isDay ? 'Day' : 'Night';

  @override
  List<Object?> get props => super.props..add(isDay);
}
