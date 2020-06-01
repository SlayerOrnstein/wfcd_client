import 'package:warframestat_api_models/entities.dart';

abstract class DropTableLocalBase {
  void cacheTableTimestamp(DateTime timestamp);

  Future<void> saveDropTable(List<Map<String, dynamic>> table);

  DateTime getTableTimestamp();

  Future<List<SlimDrop>> getDropTable();
}
