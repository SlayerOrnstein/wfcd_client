import 'package:warframestat_api_models/warframestat_api_models.dart';

abstract class WarframestateCacheBase {
  void cacheDealInfo(String id, BaseItem item);

  void cacheSynthTargets(List<SynthTarget> targets);

  void cacheWorldstate(Worldstate state);

  BaseItem getCachedDeal();

  Worldstate getCachedState();

  List<SynthTarget> getCachedTargets();
}
