/// Enum of all supported platforms for warframestat API
enum GamePlatforms {
  /// PC (mainly Valve Steam)
  pc,

  ///Sony Platstation 4
  ps4,

  /// Xbox one
  xb1,

  /// Nintendo Switch
  swi
}

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

/// Supported language codes
enum SupportedLocale {
  /// Dutch
  de,

  /// Spansih
  es,

  /// French
  fr,

  /// Italian
  it,

  /// Korean
  ko,

  /// wut?
  pl,

  /// wut?
  pt,

  /// Russian
  ru,

  /// ?
  zh,

  /// English
  en
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
