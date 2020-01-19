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

// Only reason this is being ignored is becasue the switch statement works fine
// but it's being flagged as not returning ItemObject anyways
// ignore: missing_return
ItemObject _toItemObject(Map<String, dynamic> item) {
  switch (item['category'] as String) {
    case 'Archwings':
      continue warframe;
    case 'Pets':
      continue warframe;
    case 'Sentinels':
      continue warframe;

    case 'Secondry':
      continue weapon;
    case 'Melee':
      continue weapon;
    case 'Arch-Gun':
      continue weapon;
    case 'Arch-Melee':
      continue weapon;

    warframe:
    case 'Warframes':
      return Warframe.fromJson(item);
    weapon:
    case 'Primart':
      return Weapon.fromJson(item);
    default:
      return ItemObject.fromJson(item);
  }
}

List<SynthTarget> toSynthTargets(List<dynamic> data) {
  return data.map<SynthTarget>((dynamic t) {
    return SynthTarget.fromJson(t as Map<String, dynamic>);
  }).toList();
}
