import 'package:warframestat_api_models/warframestat_api_models.dart';

final _gunReg = RegExp(r'(LongGuns)|(Pistols)|(SpaceGuns)|(SentinelWeapons)');
final _meleeReg = RegExp(r'(Melee)|(SpaceMelee)');
final _frameReg = RegExp(r'\bSuits\b');
final _exSuits = RegExp(r'(SpaceSuits)|(MechSuits)');
final _companion = RegExp(r'(Sentinels)|(KubrowPets)');
final _mods = RegExp(r'Mods');

/// Converts a json decoded list into [BaseItem] objects
List<Item> toBaseItems(List<dynamic> data) {
  return data.map<Item>((dynamic i) {
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
List<Riven> toRivens(Map<String, dynamic> data) {
  final rivens = <Riven>[];

  for (final riven in data.keys) {
    rivens.add(RivenDataModel.fromJson(data[riven] as Map<String, dynamic>));
  }

  return rivens;
}

/// Converts a json decoded list into [SynthTarget] objects
List<SynthTarget> toSynthTargets(List<dynamic> data) {
  return data.map<SynthTarget>((dynamic t) {
    return SynthTargetModel.fromJson(t as Map<String, dynamic>);
  }).toList();
}

/// Serializes giving json values into their proper [BaseItem] type
Item toBaseItem(Map<String, dynamic> item) {
  if (item.containsKey('productCategory')) {
    return _productCategoryItem(item);
  } else if ((item['category'] as String).contains('Mods')) {
    return ModModel.fromJson(item);
  } else {
    return BasicItemModel.fromJson(item);
  }
}

Item _productCategoryItem(Map<String, dynamic> item) {
  final category = item['productCategory'] as String;

  if (category.contains(_gunReg)) {
    return ProjectileWeaponModel.fromJson(item);
  } else if (category.contains(_meleeReg)) {
    return MeleeWeaponModel.fromJson(item);
  } else if (category.contains(_frameReg)) {
    return WarframeModel.fromJson(item);
  } else if (category.contains(_exSuits)) {
    return HeavyPowerSuitModel.fromJson(item);
  } else if (category.contains(_companion)) {
    return CompanionModel.fromJson(item);
  } else {
    return BasicItemModel.fromJson(item);
  }
}

/// Serializes the appropriate [BaseItem] into a [Map<String, dynamic>]
Item fromBaseItem(Item item) {
  final category = item.productCategory ?? item.category;

  if (category.contains(_gunReg)) {
    return item as ProjectileWeapon;
  } else if (category.contains(_meleeReg)) {
    return item as MeleeWeapon;
  } else if (category.contains(_frameReg)) {
    return item as Warframe;
  } else if (category.contains(_exSuits)) {
    return item as HeavyPowerSuit;
  } else if (category.contains(_mods)) {
    return item as Mod;
  } else {
    return item;
  }
}

/// Serializes worldstate json into a [Worldstate] object
Worldstate toWorldstate(Map<String, dynamic> state) {
  return WorldstateModel.fromJson(state);
}
