import 'package:warframestat_api_models/warframestat_api_models.dart';

final _gunReg = RegExp(r'(Primary)|(Secondary)|(Arch-Gun)');
final _meleeReg = RegExp(r'(Melee)|(Arch-Melee)');
final _frameReg = RegExp(r'(Warframe)|(Archwing)|(Sentinel)|(Pet)');
const _mods = 'Mods';

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
BaseItem toBaseItem(Map<String, dynamic> item) {
  final category = item['category'] as String;

  if (category.contains(_gunReg)) {
    return GunModel.fromJson(item);
  } else if (category.contains(_meleeReg)) {
    return MeleeModel.fromjson(item);
  } else if (category.contains(_frameReg)) {
    return BioWeaponModel.fromJson(item);
  } else if (category.contains(_mods)) {
    return ModModel.fromJson(item);
  } else {
    return BaseItemModel.fromJson(item);
  }
}

/// Serializes the appropriate [BaseItem] into a [Map<String, dynamic>]
BaseItem fromBaseItem(BaseItem item) {
  final category = item.category;

  if (category.contains(_gunReg)) {
    return item as Gun;
  } else if (category.contains(_meleeReg)) {
    return item as Melee;
  } else if (category.contains(_frameReg)) {
    return item as BioWeapon;
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
