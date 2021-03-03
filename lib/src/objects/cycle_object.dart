import 'worldstate_object.dart';

abstract class CycleObject extends WorldstateObject {
  const CycleObject({
    required String id,
    required DateTime activation,
    required DateTime expiry,
    required this.state,
  }) : super(id: id, activation: activation, expiry: expiry);

  final String state;

  bool get getStateBool;

  String get nextState;

  @override
  List<Object?> get props => super.props..add(state);
}
