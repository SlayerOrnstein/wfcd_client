import '../../../objects.dart';

class OrbiterNews extends WorldstateObject {
  const OrbiterNews({
    required String id,
    required this.message,
    required this.link,
    required this.imageLink,
    required this.priority,
    required this.date,
    required this.update,
    required this.primeAccess,
    required this.stream,
    required this.translations,
  }) : super(id: id);

  final String message, link, imageLink;
  final DateTime date;
  final bool priority, update, primeAccess, stream;

  final Map<String, String> translations;

  /// Uses warframestat image proxy to export a webp version of the image
  String get proxyImage {
    final encoded = Uri.encodeFull(imageLink);

    return 'https://cdn.warframestat.us/o_webp,progressive_false/$encoded';
  }

  /// create an elapsed time using [OrbiterNews.date]
  String get timestamp {
    const hour = Duration(hours: 1);
    const day = Duration(hours: 24);
    final duration = date.toLocal().difference(DateTime.now()).abs();

    if (duration < hour) {
      return '${duration.inMinutes}m';
    } else if (duration >= hour && duration < day) {
      return '${duration.inHours}h'
          ' ${duration.inMinutes % 60}m';
    } else {
      return '${duration.inDays}d';
    }
  }

  @override
  List<Object?> get props {
    return super.props
      ..addAll([
        message,
        link,
        imageLink,
        date,
        priority,
        update,
        primeAccess,
        stream,
        translations
      ]);
  }
}
