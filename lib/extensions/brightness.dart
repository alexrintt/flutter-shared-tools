extension BrightnessInverse on Brightness {
  Brightness get inverse => isDark ? Brightness.light : Brightness.dark;
  bool get isDark => this == Brightness.dark;
  bool get isLight => this == Brightness.light;
}
