import 'package:warframe_items_model/warframe_items_model.dart';
import 'package:wfcd_api_wrapper/worldstate_wrapper.dart';
import 'package:http/http.dart';

Future<void> main() async {
  final api = await WorldstateApiWrapper(Client());
  final worldstate = await api.getWorldstate(Platforms.pc);
  final search = await api.searchItems('m') ?? [];

  if (search.isNotEmpty) {
    for (ItemObject i in search) {
      print(i.name);
    }
  }

  //prints worldstate generated timestamp
  print(worldstate.timestamp);
}
