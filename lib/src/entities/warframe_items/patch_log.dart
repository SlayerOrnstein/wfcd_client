import 'package:equatable/equatable.dart';

class Patchlog extends Equatable {
  const Patchlog({
    this.name,
    this.date,
    this.url,
    this.imgUrl,
    this.additions,
    this.changes,
    this.fixes,
  });

  final String name, url, imgUrl;
  final String additions, changes, fixes;
  final DateTime date;

  @override
  List<Object> get props {
    return [name, date, url, imgUrl, additions, changes, fixes];
  }
}
