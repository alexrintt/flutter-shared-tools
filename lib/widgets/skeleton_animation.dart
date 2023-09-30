import 'package:dart_shared_tools/dart_shared_tools.dart';
import 'package:flutter/material.dart';

class SkeletonAnimation extends StatefulWidget {
  const SkeletonAnimation({
    super.key,
    required this.child,
    this.curve = Curves.fastOutSlowIn,
    this.borderRadius = BorderRadius.zero,
    this.shimmerDuration = 1000,
    this.backgroundColor = Colors.black,
  });

  factory SkeletonAnimation.smooth({
    double? borderRadius,
    Color backgroundColor = Colors.black,
  }) {
    return SkeletonAnimation(
      backgroundColor: backgroundColor,
      borderRadius:
          borderRadius.apply((double b) => BorderRadius.circular(b)) ??
              BorderRadius.circular(k4dp),
      child: const SizedBox.expand(),
    );
  }

  final Widget child;
  final Curve curve;
  final BorderRadius borderRadius;
  final int shimmerDuration;
  final Color backgroundColor;

  @override
  _SkeletonAnimationState createState() => _SkeletonAnimationState();
}

class _SkeletonAnimationState extends State<SkeletonAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: widget.shimmerDuration),
    );

    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);

    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        widget.child,
        Positioned.fill(
          child: ClipRRect(
            borderRadius: widget.borderRadius,
            clipBehavior: Clip.hardEdge,
            child: AnimatedBuilder(
              animation: _controller,
              builder: (BuildContext context, Widget? child) {
                return ColoredBox(
                  color: Color.lerp(
                    widget.backgroundColor.withAlpha(10),
                    widget.backgroundColor.withAlpha(5),
                    _animation.value,
                  )!,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
