import 'package:warframe_items_model/warframe_items_model.dart';
import 'package:wfcd_api_wrapper/worldstate_client.dart';

String platformToString(Platforms platform) =>
    platform.toString().split('.').last;

String fullPath(Platforms platform, String subject) =>
    '/${platformToString(platform)}/$subject';

ItemObject jsonToItemObject(dynamic item) {
  if (item['category'] == 'Warframes' ||
      item['category'] == 'Archwing' && !item.containsKey('damage')) {
    return Warframe.fromJson(item);
  }

  if (item['category'] == 'Primary' ||
      item['category'] == 'Secondary' ||
      item['category'] == 'Melee') {
    return Weapon.fromJson(item);
  }

  return BasicItem.fromJson(item);
}
