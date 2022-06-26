import '../../../objects.dart';

class Zariman extends CycleObject {
  const Zariman({
    required super.id,
    required super.activation,
    required super.expiry,
    required super.state,
    required this.isCorpus,
  });

  final bool isCorpus;

  @override
  bool get getStateBool => isCorpus;

  @override
  String get nextState => !isCorpus ? 'Grineer' : 'Corpus';

  @override
  List<Object?> get props => super.props..add(isCorpus);
}
