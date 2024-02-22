import 'package:flutter/material.dart';

import 'custom_translate.dart';
import 'multi_localization_controller.dart';

class MultiLocalization extends StatefulWidget {
  final Widget child;
  final List<Locale> locales;
  final assetLoader;
  final String path;
  const MultiLocalization({Key? key, required this.child, required this.locales, this.assetLoader, required this.path}) : super(key: key);

  static _MultiLocalizationProvider? of(BuildContext context) =>
      _MultiLocalizationProvider.of(context);

  @override
  State<MultiLocalization> createState() => _MultiLocalizationState();
}

class _MultiLocalizationState extends State<MultiLocalization> {
  late MultiLocalizationController localizationController;

  @override
  void initState() {
    localizationController = MultiLocalizationController(
      supportedLocales: widget.locales, assetLoader: widget.assetLoader, path: widget.path,
    );
    // causes localization to rebuild with new language
    localizationController.addListener(() {
      if (mounted) setState(() {});
    });
    super.initState();
  }

  @override
  dispose() {
    localizationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _MultiLocalizationProvider(widget, localizationController);
  }
}

class _MultiLocalizationProvider extends InheritedWidget {
  final MultiLocalization parent;
  final MultiLocalizationController _localeState;
  final List<Locale> currentLocale;
  _MultiLocalizationProvider(this.parent, this._localeState, {Key? key})
      : currentLocale = _localeState.supportedLocales,
        super(key: key, child: parent.child);

  /// Get current locale
  List<Locale> get locales => _localeState.supportedLocales;

  @override
  bool updateShouldNotify(_MultiLocalizationProvider oldWidget) {
    return oldWidget.currentLocale != locales;
  }

  static _MultiLocalizationProvider? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<_MultiLocalizationProvider>();
}
