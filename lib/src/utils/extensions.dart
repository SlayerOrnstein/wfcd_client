import 'enums.dart';

/// Extension for [GamePlatforms] with most used methods
extension GamePlatformsX on GamePlatforms {
  /// Returns Platform value in an human readable string
  String get asString {
    return toString().split('.').last;
  }

  /// Parses the string into a possible [GamePlatforms] value,
  /// otherwise returns [GamePlatforms.pc].
  static GamePlatforms fromString(String value) {
    return GamePlatforms.values.firstWhere(
      (element) => element.asString.contains(value),
      orElse: () => GamePlatforms.pc,
    );
  }
}

/// Extension for [SupportedLocale] with most used methods
extension SupportedLocaleX on SupportedLocale {
  /// Returns Platform value in an human readable string
  String get asString {
    return toString().split('.').last;
  }

  /// Parses the string into a possible [SupportedLocale] value,
  /// otherwise returns [SupportedLocale.en].
  static SupportedLocale fromLocaleCode(String value) {
    return SupportedLocale.values.firstWhere(
      (element) => element.asString.contains(value),
      orElse: () => SupportedLocale.en,
    );
  }
}
