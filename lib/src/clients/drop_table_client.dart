import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:wfcd_client/src/utils/exception_handler.dart';
import 'package:wfcd_client/src/utils/exceptions.dart';
import 'package:worldstate_api_model/misc.dart';
import 'package:path/path.dart' as p;

class DropTableClient {
  const DropTableClient(this.path);

  final String path;

  static const _baseUrl = 'https://drops.warframestat.us/data';

  File get dropTable {
    return File(p.join(path, 'drop_table.json'));
  }

  Future<DateTime> dropsTimestamp() async {
    final info = await _warframestatDrops('info.json') as Map<String, dynamic>;

    return DateTime.fromMillisecondsSinceEpoch(info['timestamp'] as int);
  }

  Future<void> downloadDropTable() async {
    final response =
        await _warframestatDrops('all.slim.json', isString: true) as String;

    await dropTable.writeAsString(response);
  }

  Future<List<SlimDrop>> getDropTable() async {
    final table = json.decode(await dropTable.readAsString()) as List<dynamic>;

    return table
        .map<SlimDrop>(
            (dynamic d) => SlimDrop.fromJson(d as Map<String, dynamic>))
        .toList();
  }

  Future<dynamic> _warframestatDrops(String path,
      {bool isString = false}) async {
    try {
      final response = await http.get('$_baseUrl/$path');

      return excpetionHandler(response, returnString: isString);
    } on SocketException {
      throw const DeviceOffline();
    }
  }
}
