import 'dart:convert';

import 'package:warframe_items_model/warframe_items_model.dart';
import 'package:wfcd_api_wrapper/src/models/synth_target.dart';

import 'enums.dart';

String platformToString(Platforms platform) =>
    platform.toString().split('.').last;

String fullPath(Platforms platform, String subject) =>
    '/${platformToString(platform)}/$subject';

List<ItemObject> jsonToItemObjects(String data) {
  final searchs = json.decode(data).cast<Map<String, dynamic>>();

  return searchs.map<ItemObject>((i) => _jsonToItemObject(i)).toList();
}

ItemObject _jsonToItemObject(dynamic item) {
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

List<SynthTarget> jsonToTargets(String data) {
  final targets = json.decode(data).cast<Map<String, dynamic>>();

  return targets.map<SynthTarget>((t) => SynthTarget.fromJson(t)).toList();
}
