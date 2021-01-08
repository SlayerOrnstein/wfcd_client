import '../../../objects.dart';

class ConstructionProgress extends WorldstateObject {
  const ConstructionProgress({
    required String id,
    required this.fomorianProgress,
    required this.razorbackProgress,
    required this.unknownProgress,
  }) : super(id: id);

  final String fomorianProgress, razorbackProgress, unknownProgress;
}
