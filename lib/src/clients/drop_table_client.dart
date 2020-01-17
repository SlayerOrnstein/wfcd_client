import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:warframe_items_model/warframe_items_model.dart';

class DropTableClient {
  const DropTableClient(this.dropTable);

  final File dropTable;

  static const _baseUrl = 'https://drops.warframestat.us/data';

  Future<DateTime> dropsTimestamp() async {
    final info = json.decode(await _warframestatDrops('info.json'))
        as Map<String, dynamic>;

    return DateTime.fromMillisecondsSinceEpoch(info['timestamp'] as int);
  }

  Future<void> downloadDropTable() async {
    final response = await _warframestatDrops('all.slim.json');

    await dropTable.writeAsString(response);
  }

  Future<List<SlimDrop>> getDropTable() async {
    final table = json.decode(await dropTable.readAsString()) as List<dynamic>;

    return table
        .map<SlimDrop>(
            (dynamic d) => SlimDrop.fromJson(d as Map<String, dynamic>))
        .toList();
  }

  Future<String> _warframestatDrops(String path) async {
    final response = await http.get('$_baseUrl/$path');

    return response.body;
  }
}
