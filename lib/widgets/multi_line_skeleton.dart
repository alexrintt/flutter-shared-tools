import 'package:flutter/material.dart';

import '../flutter_shared_tools.dart';

class MultiLineSkeleton extends StatelessWidget {
  const MultiLineSkeleton({
    Key? key,
    this.height = kToolbarHeight,
    this.count = 2,
    this.heightDashArray = const <double>[0.5],
    this.widthDashArray = const <double>[1, 0.8],
    this.borderRadius,
  }) : super(key: key);

  final double height;
  final int count;
  final List<double> heightDashArray;
  final List<double> widthDashArray;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        for (int index = 0; index < count; index++) ...<Widget>[
          SizedBox(
            height: kToolbarHeight *
                heightDashArray[index % heightDashArray.length],
            child: FractionallySizedBox(
              widthFactor: widthDashArray[index % widthDashArray.length],
              child: SkeletonAnimation.smooth(borderRadius: borderRadius),
            ),
          ),
          if (index < count - 1) const Padding(padding: EdgeInsets.all(k2dp)),
        ]
      ],
    );
  }
}
