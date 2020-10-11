import 'dart:convert' as convert;
import 'dart:io';

import 'package:path/path.dart' as p;

class Fixture {
  const Fixture(this.name);

  final String name;

  String fixture() {
    try {
      return _file(p.join('test', 'fixtures', name));
    } on FileSystemException {
      return _file(p.join('fixtures', name));
    }
  }

  T json<T>() => convert.json.decode(fixture()) as T;

  String _file(String path) => File(path).readAsStringSync();
}
