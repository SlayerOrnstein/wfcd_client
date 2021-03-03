import '../../entities.dart';
import '../../models.dart';

final _companion = RegExp(r'(Sentinels)|(KubrowPets)');
final _exSuits = RegExp(r'(SpaceSuits)|(MechSuits)');
final _frameReg = RegExp(r'\bSuits\b');
final _gunReg = RegExp(r'(LongGuns)|(Pistols)|(SpaceGuns)|(SentinelWeapons)');
final _meleeReg = RegExp(r'(Melee)|(SpaceMelee)');
final _mods = RegExp(r'Mods');

/// Serializes the appropriate [Item] into a [Map<String, dynamic>]
Map<String, dynamic> fromBaseItem(Item item) {
  if (item is ProjectileWeapon) {
    return (item as ProjectileWeaponModel).toJson();
  } else if (item is MeleeWeapon) {
    return (item as MeleeWeaponModel).toJson();
  } else if (item is Warframe) {
    return (item as WarframeModel).toJson();
  } else if (item is HeavyPowerSuit) {
    return (item as HeavyPowerSuitModel).toJson();
  } else if (item is Mod) {
    return (item as ModModel).toJson();
  } else {
    if (item is MiscFoundryItem) {
      return (item as MiscFoundryItemModel).toJson();
    } else {
      return (item as MiscItemModel).toJson();
    }
  }
}

List<Map<String, dynamic>> fromBaseItems(List<Item> items) {
  return items.map(fromBaseItem).toList();
}

List<Map<String, dynamic>> fromDrops(List<SlimDrop> drops) {
  return drops.map((e) => (e as SlimDropModel).toJson()).toList();
}

List<Map<String, dynamic>> fromSynthTargets(List<SynthTarget> targets) {
  return targets.map((e) => (e as SynthTargetModel).toJson()).toList();
}

/// Serializes giving json values into their proper [Item] type
Item toBaseItem(Map<String, dynamic> item) {
  // Pet parts are catogoriezed as Pistols so we want to filter them
  // out into normal barebone FoundryItems since any weapon attribute is either
  // null or 0.
  final isCompanionPart =
      item['type'] == 'Pet Parts' || item['type'] == 'Moa Gyro';

  if (item.containsKey('productCategory') && !isCompanionPart) {
    return _productCategoryItem(item);
  } else if ((item['category'] as String).contains(_mods)) {
    return ModModel.fromJson(item);
  } else {
    if (item.containsKey('consumeOnBuild')) {
      return MiscFoundryItemModel.fromJson(item);
    } else {
      return MiscItemModel.fromJson(item);
    }
  }
}

/// Converts a json decoded list into [Item] objects
List<Item> toBaseItems(List<dynamic> data) {
  return data.map((dynamic i) {
    return toBaseItem(i as Map<String, dynamic>);
  }).toList();
}

/// Converts json list to [SlimDrop] objects
List<SlimDrop> toDrops(List<dynamic> data) {
  return data
      .map((dynamic e) => SlimDropModel.fromJson(e as Map<String, dynamic>))
      .toList();
}

Map<String, dynamic> fromRivens(List<Riven> rivens) {
  final data = <String, dynamic>{};

  for (final riven in rivens) {
    data[riven.unrolled.compatibility] = (riven as RivenDataModel).toJson();
  }

  return data;
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

/// Serializes worldstate json into a [Worldstate] object
Worldstate toWorldstate(Map<String, dynamic> state) {
  return WorldstateModel.fromJson(state);
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
    if (item.containsKey('consumeOnBuild')) {
      return MiscFoundryItemModel.fromJson(item);
    } else {
      return MiscItemModel.fromJson(item);
    }
  }
}
