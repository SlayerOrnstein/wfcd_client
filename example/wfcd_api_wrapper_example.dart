import 'package:warframe_items_model/warframe_items_model.dart';
import 'package:wfcd_api_wrapper/worldstate_client.dart';
import 'package:http/http.dart';

Future<void> main() async {
  final api = await WorldstateClient(Client());
  final worldstate = await api.getWorldstate(Platforms.pc);
  final search = await api.searchItems('chroma') ?? [];

  if (search.isNotEmpty) {
    for (ItemObject i in search) {
      print(i.name);
    }
  }

  //prints worldstate generated timestamp
  print(worldstate.timestamp);
}
