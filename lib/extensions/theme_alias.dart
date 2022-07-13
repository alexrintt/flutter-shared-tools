import 'package:flutter/material.dart';

extension ThemeAlias on BuildContext {
  ThemeData get theme => Theme.of(this);

  bool get isDark => theme.brightness == Brightness.dark;

  ColorScheme get colorScheme => theme.colorScheme;
  TextTheme get textTheme => theme.textTheme;
  IconThemeData get iconTheme => theme.iconTheme;
  IconThemeData get primaryIconTheme => theme.primaryIconTheme;
  Color get primaryColor => theme.primaryColor;
  BottomNavigationBarThemeData get bottomNavigationBarTheme =>
      theme.bottomNavigationBarTheme;

  Color get onPrimary => colorScheme.onPrimary;
  AppBarTheme get appBarTheme => theme.appBarTheme;
  Color? get appBarShadowColor => appBarTheme.shadowColor;
  Color? get scaffoldBackgroundColor => theme.scaffoldBackgroundColor;
  Color? get tertiary => theme.colorScheme.tertiary;
  Color? get onTertiary => theme.colorScheme.onTertiary;
  Color? get onBackground => theme.colorScheme.onBackground;
}
