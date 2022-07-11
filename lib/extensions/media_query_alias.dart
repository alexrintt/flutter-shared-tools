import 'package:flutter/cupertino.dart';

extension MediaQueryAlias on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  Size get size => mediaQuery.size;
  double get width => size.width;
  double get height => size.height;
  Offset get center => size.center(Offset.zero);
  double get devicePixelRatio => mediaQuery.devicePixelRatio;
  double get textScaleFactor => mediaQuery.textScaleFactor;
}
