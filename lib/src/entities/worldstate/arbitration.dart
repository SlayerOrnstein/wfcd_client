import '../../../objects.dart';

class Arbitration extends ExternalMission {
  const Arbitration({
    DateTime? activation,
    DateTime? expiry,
    String? node,
    String? enemy,
    String? type,
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
