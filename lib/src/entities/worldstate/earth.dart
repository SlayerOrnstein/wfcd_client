import '../../../objects.dart';

class Earth extends CycleObject {
  const Earth({
    required super.id,
    required super.activation,
    required super.expiry,
    required super.state,
    required this.isDay,
    this.isCetus,
  });

  final bool isDay;
  final bool? isCetus;

  @override
  bool get getStateBool => isDay;

  @override
  String get nextState => !isDay ? 'Day' : 'Night';

  @override
  List<Object?> get props => super.props..add(isDay);
}
