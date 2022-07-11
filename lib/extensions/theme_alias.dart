import 'package:flutter/material.dart';

extension ThemeAlias on BuildContext {
  bool get isDark => Theme.of(this).brightness == Brightness.dark;

  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  TextTheme get textTheme => Theme.of(this).textTheme;
  IconThemeData get iconTheme => Theme.of(this).iconTheme;
  IconThemeData get primaryIconTheme => Theme.of(this).primaryIconTheme;
  Color get primaryColor => Theme.of(this).primaryColor;
  BottomNavigationBarThemeData get bottomNavigationBarTheme =>
      Theme.of(this).bottomNavigationBarTheme;

  Color get onPrimary => colorScheme.onPrimary;
  AppBarTheme get appBarTheme => Theme.of(this).appBarTheme;
  Color? get appBarShadowColor => appBarTheme.shadowColor;
}
