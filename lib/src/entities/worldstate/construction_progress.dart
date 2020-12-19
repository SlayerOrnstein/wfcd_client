import '../../../objects.dart';

class ConstructionProgress extends WorldstateObject {
  const ConstructionProgress({
    String id,
    this.fomorianProgress,
    this.razorbackProgress,
    this.unknownProgress,
  }) : super(id: id);

  final String fomorianProgress, razorbackProgress, unknownProgress;
}
