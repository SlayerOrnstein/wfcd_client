import 'package:hive/hive.dart';
import 'package:warframestat_api_models/warframestat_api_models.dart';
import 'package:wfcd_client/src/base/local/warframestate_local_base.dart';

class WarframestatCache implements WarframestateCacheBase {
  WarframestatCache(this._box);

  final Box<dynamic> _box;

  static const String _dealId = 'dealId';
  static const String _dealItem = 'dealItem';
  static const String _state = 'worldstate';
  static const String _targets = 'synthTargets';

  @override
  void cacheDealInfo(String id, BaseItem item) {
    _box.put(_dealId, id);
    _box.put(_dealItem, (item as BaseItemModel).toJson());
  }

  @override
  void cacheSynthTargets(List<SynthTarget> targets) {
    _box.put(_targets, targets.map((t) => t as SynthTargetModel));
  }

  @override
  void cacheWorldstate(Worldstate state) {
    final model = state as WorldstateModel;

    _box.put(_state, model.toJson());
  }

  @override
  BaseItem getCachedDeal() {
    return _box.get(_dealItem) as BaseItem;
  }

  @override
  Worldstate getCachedState() {
    return _box.get(_state) as WorldstateModel;
  }

  @override
  List<SynthTarget> getCachedTargets() {
    return _box.get(_targets) as List<SynthTarget>;
  }
}
