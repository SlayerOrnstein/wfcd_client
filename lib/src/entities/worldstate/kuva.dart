import '../../../objects.dart';

class Kuva extends ExternalMission {
  const Kuva({
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
