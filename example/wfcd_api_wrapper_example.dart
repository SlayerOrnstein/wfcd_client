import 'package:wfcd_client/enums.dart';
import 'package:wfcd_client/clients.dart';

Future<void> main() async {
  const api = WorldstateClient();
  final worldstate = await api.getWorldstate(Platforms.pc);

  //prints worldstate generated timestamp
  print(worldstate.timestamp);
}
