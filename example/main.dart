import 'package:wfcd_client/wfcd_client.dart';
import 'package:http/http.dart' as http;

Future<void> main() async {
  final client = WarframestatClient(http.Client());
  final worldstate = await client.getWorldstate(GamePlatforms.pc);

  // Will print the timestamp generated bt Warframestat api
  print(worldstate.timestamp);
}
