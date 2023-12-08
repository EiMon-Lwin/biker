import 'dart:ui';

abstract class LocalizationApi {
  Future<Language> get startLocale;
  
  Language get defaultLocale;
  
  Set<Language> get supportedLanguages;
  
  List<Locale> get supportedLocales;

  String tr(String key, {Map<String, String>? namedArgs});

  void changeLocale(Locale locale);

  Future<Language> getSavedLocale();
}

class Language {
  final String name;
  final Locale locale;
  final SvgFlag flag;

  const Language({
    required this.name,
    required this.locale,
    required this.flag,
  });
}

class SvgFlag {
  final String path;
  final Locale locale;

  const SvgFlag({
    required this.path,
    required this.locale,
  });
}

