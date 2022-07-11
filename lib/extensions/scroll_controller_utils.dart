import 'package:flutter/cupertino.dart';

extension ScrollControllerUtils on ScrollController {
  /// Call [listener] when [pixels] reach a [offset]
  ///
  /// Useful to implement Infinite Scroll like features
  void addOffsetListener(VoidCallback listener, [double offset = 0]) {
    addListener(() {
      if (position.pixels >= position.maxScrollExtent - offset) listener();
    });
  }
}
