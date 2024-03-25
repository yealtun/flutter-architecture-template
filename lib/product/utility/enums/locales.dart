import 'package:flutter/material.dart';

/// Project supported locale enums
enum Locales {
  /// Turkish locale
  tr(Locale('tr', 'TR')),

  /// English locale
  en(Locale('en', 'US'));

  /// Locale value
  final Locale locale;
  const Locales(this.locale);

  /// Project supported locales
  static final List<Locale> supportedLocales = [
    Locales.tr.locale,
    Locales.en.locale,
  ];
}