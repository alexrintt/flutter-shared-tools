import 'package:flutter/cupertino.dart';

extension MediaQueryAlias on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  Size get size => mediaQuery.size;
  double get width => size.width;
  double get height => size.height;
  Offset get center => size.center(Offset.zero);
  double get devicePixelRatio => mediaQuery.devicePixelRatio;
  double get textScaleFactor => mediaQuery.textScaleFactor;
  double get statusBarHeight => mediaQuery.padding.top;
  double get bottomBarHeight => mediaQuery.padding.bottom;
  double get safeAreaHeight => height - statusBarHeight - bottomBarHeight;
  double get halfWidth => width / 2;
  double get halfHeight => height / 2;
  double get shortestSide => size.shortestSide;
  double get longestSide => size.longestSide;

  ScrollController? get scrollController => PrimaryScrollController.of(this);
}
