import 'package:equatable/equatable.dart';

class Patchlog extends Equatable {
  const Patchlog({
    required this.name,
    required this.date,
    required this.url,
    this.imgUrl,
    required this.additions,
    required this.changes,
    required this.fixes,
  });

  final String name, url;
  final String? imgUrl;
  final String additions, changes, fixes;
  final DateTime date;

  @override
  List<Object?> get props {
    return [name, date, url, imgUrl, additions, changes, fixes];
  }
}
