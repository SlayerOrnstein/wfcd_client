import '../../entities.dart';
import '../../models.dart';

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
  } else if (item is MiscFoundryItem) {
    return (item as MiscFoundryItemModel).toJson();
  } else if (item is Companion) {
    return (item as CompanionModel).toJson();
  } else {
    return (item as MiscItemModel).toJson();
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
  const frameReg = 'Warframes';
  const mods = 'Mods';

  final companion = RegExp('(Sentinels)|(Pets)');
  final exSuits = RegExp('(SpaceSuits)|(MechSuits)');
  final gunReg = RegExp('(Primary)|(Secondary)|(Arch-Gun)');
  final meleeReg = RegExp('(Melee)|(Arch-Melee)');

  // Pet parts have a pistol structure but are not actually pistols
  // so we're filtering them out into Misc items.
  final isCompanionPart = (item['uniqueName'] as String).contains(
    RegExp(
      '(MoaPetParts)|(CreaturePetParts)|'
      '(ZanukaPetParts)|(WoundedInfestedCritter)'
      '|(WoundedInfestedPredator)',
    ),
  );

  final isSentinalMelee =
      (item['uniqueName'] as String).contains('SentinelWeapons');

  final category = item['category'] as String;
  final productCategory = item['productCategory'] as String?;

  if (!isCompanionPart) {
    if (category.contains(gunReg) && !isSentinalMelee) {
      return ProjectileWeaponModel.fromJson(item);
    } else if (category.contains(meleeReg) || isSentinalMelee) {
      return MeleeWeaponModel.fromJson(item);
    } else if (category.contains(frameReg) &&
        !(productCategory?.contains('MechSuits') ?? false)) {
      return WarframeModel.fromJson(item);
    } else if (productCategory?.contains(exSuits) ?? false) {
      return HeavyPowerSuitModel.fromJson(item);
    } else if (category.contains(companion)) {
      return CompanionModel.fromJson(item);
    } else if (category.contains(mods)) {
      return ModModel.fromJson(item);
    } else {
      if (item.containsKey('consumeOnBuild')) {
        return MiscFoundryItemModel.fromJson(item);
      } else {
        return MiscItemModel.fromJson(item);
      }
    }
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
Iterable<Riven> toRivens(Map<String, dynamic> data) sync* {
  for (final riven in data.keys) {
    yield RivenDataModel.fromJson(data[riven] as Map<String, dynamic>);
  }
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
