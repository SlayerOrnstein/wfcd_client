import 'package:wfcd_api_wrapper/worldstate_wrapper.dart';

Future<void> main() async {
  final WorldstateApiWrapper worldstate =
      await WorldstateApiWrapper.getInstance(Platforms.pc);

  print(worldstate.timestamp);
}
