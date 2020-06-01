import 'package:warframestat_api_models/entities.dart';

abstract class DropTableLocalBase {
  void cacheTableTimestamp(DateTime timestamp);

  Future<void> saveDropTable(String table);

  DateTime getTableTimestamp();

  Future<List<SlimDrop>> getDropTable();
}
