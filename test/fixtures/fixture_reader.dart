import 'dart:convert' as convert;
import 'dart:io';

import 'package:path/path.dart' as p;

class Fixture {
  const Fixture(this.name);

  final String name;

  Future<T> json<T>() async => convert.json.decode(await _fixture()) as T;

  Future<String> _file(String path) => File(path).readAsString();

  Future<String> _fixture() {
    try {
      return _file(p.join('test', 'fixtures', name));
    } on FileSystemException {
      return _file(p.join('fixtures', name));
    }
  }
}
