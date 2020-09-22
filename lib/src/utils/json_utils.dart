import 'package:warframestat_api_models/warframestat_api_models.dart';

/// Converts a json decoded list into [BaseItem] objects
List<BaseItem> toBaseItems(List<dynamic> data) {
  return data.map<BaseItem>((dynamic i) {
    return toBaseItem(i as Map<String, dynamic>);
  }).toList();
}

/// Converts json list to [SlimDrop] objects
List<SlimDrop> toDrops(List<dynamic> data) {
  return data
      .map((dynamic e) => SlimDropModel.fromJson(e as Map<String, dynamic>))
      .toList();
}

/// Converts Riven rolls of riven weapon type to [RivenRoll]
List<RivenRoll> toRivens(String weaponType, Map<String, dynamic> data) {
  final rolls = <RivenRoll>[];

  for (final key in (data[weaponType] as Map<String, dynamic>).keys) {
    final roll = data[weaponType][key] as Map<String, dynamic>;

    rolls.add(RivenRollModel.fromJson(roll));
  }

  return rolls;
}

/// Converts a json decoded list into [SynthTarget] objects
List<SynthTarget> toSynthTargets(List<dynamic> data) {
  return data.map<SynthTarget>((dynamic t) {
    return SynthTargetModel.fromJson(t as Map<String, dynamic>);
  }).toList();
}

// Only reason this is being ignored is becasue the switch statement works fine
// but it's being flagged as not returning ItemObject anyways
// ignore: missing_return
BaseItem toBaseItem(Map<String, dynamic> item) {
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
      return BioWeaponModel.fromJson(item);
    weapon:
    case 'Primary':
      return WeaponModel.fromJson(item);

    default:
      return BaseItemModel.fromJson(item);
  }
}

/// Converts the appropriate [BaseItem] into a [Map<String, dynamic>]
// ignore: missing_return
BaseItem fromBaseItem(BaseItem item) {
  switch (item.type) {
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
      return item as BioWeaponModel;
    weapon:
    case 'Primary':
      return item as WeaponModel;

    default:
      return item as BaseItemModel;
  }
}

Worldstate toWorldstate(Map<String, dynamic> state) {
  return WorldstateModel.fromJson(state);
}
