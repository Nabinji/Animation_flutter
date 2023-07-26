import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedText extends StatelessWidget {
  const AnimatedText({super.key});

  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Colors.purple,
      Colors.blue,
      Colors.yellow,
      Colors.red,
    ];

    const colorizeTextStyle = TextStyle(
      fontSize: 50.0,
      fontFamily: 'Horizon',
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation in Fltter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 250,
              width: 350,
              color: const Color.fromARGB(255, 174, 241, 86),
              child: DefaultTextStyle(
                style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 7, 193)),
                child: Center(
                  child: AnimatedTextKit(repeatForever: true, animatedTexts: [
                    // RotateAnimatedText('AWESOME'),
                    // RotateAnimatedText('OPTIMISTIC'),
                    // RotateAnimatedText('DIFFERENT'),

                    // ScaleAnimatedText('Think'),
                    // ScaleAnimatedText('Build'),
                    // ScaleAnimatedText('Ship'),

                    // WavyAnimatedText('Hello World'),

                    ColorizeAnimatedText(
                      'Larry Page',
                      textStyle: colorizeTextStyle,
                      colors: colorizeColors,
                    ),
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
