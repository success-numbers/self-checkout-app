import 'package:flutter/cupertino.dart';

import 'custom_translate.dart';

class MultiLocalizationController extends ChangeNotifier {
  List<Locale> supportedLocales;
  final assetLoader;
  final String path;
  Map<String, Translations> _translations = {};

  get translations => _translations;

  MultiLocalizationController({required this.supportedLocales, required this.assetLoader, required this.path}) {
    loadTranslations();
  }

  Future<void> setLocale(List<Locale> l) async {
    supportedLocales = l;
    await loadTranslations();
    notifyListeners();
  }

  Future loadTranslations() async {
    Map<String, dynamic> data;
    Map<String, Translations> _translations = {};
    // for each locale, load the translation data
    for (Locale locale in supportedLocales) {
      try {
        data = Map.from(await loadTranslationData(locale));
        _translations[locale.toLanguageTag()] = Translations(data);
      } catch (e) {
        print(e);
      }
    }
    this._translations = _translations;
    MultiLocalization.load(this._translations);
    print('loaded translations: ${_translations.keys}');
  }

  Future<Map<String, dynamic>> loadTranslationData(Locale locale) async {
    late Map<String, dynamic>? data;

    try {
      data = await assetLoader.load(path, locale);
    } catch (e) {
      print(e);
    }

    if (data == null) return {};

    return data;
  }
}