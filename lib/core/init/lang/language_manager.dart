// singleton class
import 'package:flutter/material.dart';

class LanguageManager {
  static LanguageManager? _instance;
  static LanguageManager? get instance {
    // if _instance is null, then assign LanguageManager() to it
    _instance ??= LanguageManager._init();
    return _instance;
  }

  LanguageManager._init();

  final enLocale = const Locale("en", "US");

  List<Locale> get supportedLocales => [enLocale];
}
