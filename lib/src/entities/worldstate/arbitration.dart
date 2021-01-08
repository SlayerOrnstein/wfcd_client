import '../../../objects.dart';

class Arbitration extends ExternalMission {
  const Arbitration({
    required DateTime activation,
    required DateTime expiry,
    required String node,
    required String enemy,
    required String type,
    required bool archwingRequired,
  }) : super(
          activation: activation,
          expiry: expiry,
          node: node,
          enemy: enemy,
          type: type,
          archwingRequired: archwingRequired,
        );
}
