import 'package:warframe_items_model/warframe_items_model.dart';
import 'package:wfcd_client/enums.dart';
import 'package:worldstate_api_model/misc.dart';

String platformToString(Platforms platform) {
  return platform.toString().split('.').last;
}

String fullPath(Platforms platform, String subject) {
  return '/${platformToString(platform)}/$subject';
}

List<ItemObject> toItemObjects(List<dynamic> data) {
  return data.map<ItemObject>((dynamic i) {
    return _toItemObject(i as Map<String, dynamic>);
  }).toList();
}

ItemObject _toItemObject(Map<String, dynamic> item) {
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

List<SynthTarget> toSynthTargets(List<dynamic> data) {
  return data.map<SynthTarget>((dynamic t) {
    return SynthTarget.fromJson(t as Map<String, dynamic>);
  }).toList();
}
