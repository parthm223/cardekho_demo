import 'package:flutter/material.dart';

class FadeSlideTransition extends StatelessWidget {
  final Widget child;
  final Animation<double> animation;
  final Offset beginOffset;

  const FadeSlideTransition({
    super.key,
    required this.child,
    required this.animation,
    this.beginOffset = const Offset(0, 0.25),
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Opacity(
          opacity: animation.value,
          child: Transform.translate(
            offset: Offset(
              0,
              beginOffset.dy * (1 - animation.value) * 100,
            ),
            child: child,
          ),
        );
      },
      child: child,
    );
  }
}

