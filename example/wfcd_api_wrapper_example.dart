import 'package:wfcd_api_wrapper/worldstate_wrapper.dart';
import 'package:http/http.dart';

Future<void> main() async {
  final api = await WorldstateApiWrapper(Client());
  final worldstate = await api.getWorldstate(Platforms.pc);

  //prints worldstate generated timestamp
  print(worldstate.timestamp);
}
