import 'package:flutter/material.dart';
import 'dart:async';

class DelayedAnimation extends StatefulWidget {
  final Widget child;
  final int delay;
  const DelayedAnimation({ this.child,  this.delay});

  @override
  State<DelayedAnimation> createState() => _DelayedAnimationState();
}

class _DelayedAnimationState extends State<DelayedAnimation>
    with SingleTickerProviderStateMixin {
   AnimationController _controller;
   Animation<Offset> _animation;
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    );
    final curve = CurvedAnimation(
      parent: _controller,
      curve: Curves.decelerate,
    );

    _animation = Tween<Offset>(begin: Offset(0.0, -0.2), end: Offset.zero)
        .animate(curve);
    Timer(Duration(milliseconds: widget.delay), () {
      _controller.forward();
    });
  }

  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _controller,
      child: SlideTransition(position: _animation, child: widget.child),
    );
  }
}