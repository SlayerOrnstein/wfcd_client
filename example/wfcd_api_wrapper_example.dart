import 'package:wfcd_api_wrapper/wfcd_wrapper.dart';

Future<void> main() async {
  final api = WfcdWrapper();
  final worldstate = await api.getWorldstate(Platforms.pc);

  //prints worldstate generated timestamp
  print(worldstate.timestamp);
}
