import 'package:flutter/material.dart';
import 'package:flutter_animation/animated_builder.dart';
// import 'package:flutter_animation/%20buttom%20curve%20navigation/curve_navigation_bar.dart';
// import 'package:flutter_animation/animated_text.dart';
// import 'package:flutter_animation/hide_show_appbar.dart';
import 'package:flutter_animation/text_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: MyAnimatedBuilder()
        // CurveBar()
        // AnimatedText(),
        // HideShow(),
        // TextSlider(),
        );
  }
}
