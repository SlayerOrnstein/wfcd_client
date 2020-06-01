import 'package:warframestat_api_models/entities.dart';

enum GamePlatforms { pc, ps4, xb1, swi }

extension GamePlatformsX on GamePlatforms {
  String get asString => toString().split('.').last;
}

abstract class WarframestatRemoteBase {
  Future<List<SynthTarget>> getSynthTargets();

  Future<Worldstate> getWorldstate(GamePlatforms platform);

  Future<List<BaseItem>> searchItems(String term);
}
