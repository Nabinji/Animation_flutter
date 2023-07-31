import 'package:flutter/material.dart';
import 'dart:math' as math;

class MyAnimatedBuilder extends StatefulWidget {
  const MyAnimatedBuilder({super.key});

  @override
  State<MyAnimatedBuilder> createState() => _MyAnimatedBuilderState();
}

class _MyAnimatedBuilderState extends State<MyAnimatedBuilder>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat(); //  if we need to repeat again and again the we do ..repeat

  void despose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _controller,
        child: const CircleAvatar(
          radius: 150,
          backgroundColor: Color.fromARGB(255, 114, 13, 197),
          child: Text(
            "Hello Flutter",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        builder: (BuildContext context, Widget? child) {
          return Transform.rotate(
            angle: _controller.value * 7.0 * math.pi,
            child: child,
          );
        },
      ),
    );
  }
}
