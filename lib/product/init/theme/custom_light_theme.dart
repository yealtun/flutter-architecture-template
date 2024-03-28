import 'package:flutter/material.dart';
import 'package:flutter_architecture_template/product/init/theme/custom_color_schemes.dart';
import 'package:flutter_architecture_template/product/init/theme/custom_theme.dart';
import 'package:google_fonts/google_fonts.dart';

final class CustomLightTheme implements CustomTheme {
  // TODO: change to initialize ThemeData instead of computed
  @override
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        colorScheme: CustomColorSchemes.lightColorScheme,
        floatingActionButtonTheme: floatingActionButtonThemeData,
        fontFamily: GoogleFonts.roboto().fontFamily,
      );

  @override
  // TODO: implement floatingActionButtonThemeData
  FloatingActionButtonThemeData get floatingActionButtonThemeData =>
      const FloatingActionButtonThemeData();
}
