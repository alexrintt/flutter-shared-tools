import 'package:flutter/cupertino.dart';

const Map<String, Color> kFg = <String, Color>{
  'default': Color(0xff24292f),
  'muted': Color(0xff57606a),
  'subtle': Color(0xff6e7781),
  'onEmphasis': Color(0xffffffff),
};

const Map<String, Color> kCanvas = <String, Color>{
  'default': Color(0xffffffff),
  'overlay': Color(0xffffffff),
  'inset': Color(0xfff6f8fa),
  'subtle': Color(0xfff6f8fa),
};

final Map<String, Color> kBorder = <String, Color>{
  'default': const Color(0xffd0d7de),
  'muted': const HSLColor.fromAHSL(1, 210, 0.18, 0.87).toColor(),
  'subtle': const Color.fromRGBO(27, 31, 36, 0.15),
};

const Map<String, Color> kNeutral = <String, Color>{
  'emphasisPlus': Color(0xff24292f),
  'emphasis': Color(0xff6e7781),
  'muted': Color.fromRGBO(175, 184, 193, 0.2),
  'subtle': Color.fromRGBO(234, 238, 242, 0.5),
};

const Map<String, Color> kAccent = <String, Color>{
  'fg': Color(0xff0969da),
  'emphasis': Color(0xff0969da),
  'muted': Color.fromRGBO(84, 174, 255, 0.4),
  'subtle': Color(0xffddf4ff),
};

const Map<String, Color> kSuccess = <String, Color>{
  'fg': Color(0xff0969da),
  'emphasis': Color(0xff218bff),
  'muted': Color.fromRGBO(84, 174, 255, 0.4),
  'subtle': Color(0xffddf4ff),
};

const Map<String, Color> kAttention = <String, Color>{
  'fg': Color(0xff9a6700),
  'emphasis': Color(0xffbf8700),
  'muted': Color.fromRGBO(212, 167, 44, 0.4),
  'subtle': Color(0xfffff8c5),
};

const Map<String, Color> kSevere = <String, Color>{
  'fg': Color(0xffb35900),
  'emphasis': Color(0xffb35900),
  'muted': Color.fromRGBO(247, 153, 57, 0.4),
  'subtle': Color(0xfffff5e8),
};

const Map<String, Color> kDanger = <String, Color>{
  'fg': Color(0xffb35900),
  'emphasis': Color(0xffb35900),
  'muted': Color.fromRGBO(247, 153, 57, 0.4),
  'subtle': Color(0xfffff5e8),
};

const Map<String, Color> kOpen = <String, Color>{
  'fg': Color(0xffb35900),
  'emphasis': Color(0xffdd7815),
  'muted': Color.fromRGBO(247, 153, 57, 0.4),
  'subtle': Color(0xfffff5e8),
};

const Map<String, Color> kClosed = <String, Color>{
  'fg': Color(0xff6e7781),
  'emphasis': Color(0xff6e7781),
  'muted': Color.fromRGBO(175, 184, 193, 0.4),
  'subtle': Color(0xfff6f8fa),
};

const Map<String, Color> kDone = <String, Color>{
  'fg': Color(0xff8250df),
  'emphasis': Color(0xff8250df),
  'muted': Color.fromRGBO(194, 151, 255, 0.4),
  'subtle': Color(0xfffbefff),
};

const Map<String, Color> kSponsors = <String, Color>{
  'fg': Color(0xffbf3989),
  'emphasis': Color(0xffbf3989),
  'muted': Color.fromRGBO(255, 128, 200, 0.4),
  'subtle': Color(0xffffeff7),
};
