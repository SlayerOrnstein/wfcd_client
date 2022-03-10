import 'package:wfcd_client/wfcd_client.dart';

Future<void> main() async {
  final client = WarframestatClient();
  final worldstate = await client.getWorldstate();

  // Will print the timestamp generated bt Warframestat api
  // ignore: avoid_print
  print(worldstate?.timestamp);
}
