import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:test/test.dart';
import 'package:warframe_items_model/warframe_items_model.dart';
import 'package:wfcd_client/clients.dart';

void main() {
  File dropTable;
  DropTableClient client;

  setUpAll(() {
    final directory = Directory.systemTemp;

    dropTable = File(path.join(directory.path, 'drop_table.json'));
    client = DropTableClient(dropTable);
  });

  test('Download drop table', () async {
    await client.downloadDropTable();

    expect(dropTable.existsSync(), true);
  });

  test('Serialize drop table json', () async {
    final dropTable = await client.getDropTable();

    expect(dropTable, const TypeMatcher<List<SlimDrop>>());
  });
}
