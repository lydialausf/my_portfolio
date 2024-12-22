import 'package:flutter/material.dart';
import 'package:my_portfolio/gen/assets.gen.dart';
import 'dart:math' as math;

class SpinningWidget extends StatefulWidget {
  const SpinningWidget({super.key});

  @override
  State<SpinningWidget> createState() => _SpinningWidgetState();
}

class _SpinningWidgetState extends State<SpinningWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (_controller.isAnimating) {
          _controller.stop();
        } else {
          _controller.repeat();
        }
      },
      child: AnimatedBuilder(
        animation: _controller,
        child: CircleAvatar(
          radius: 100,
          child: ClipOval(
              child: Assets.images.r
                  .image(fit: BoxFit.cover, height: 200, width: 200)),
        ),
        builder: (BuildContext context, Widget? child) {
          return Transform.rotate(
            angle: _controller.value * 2.0 * math.pi,
            child: child,
          );
        },
      ),
    );
  }
}
