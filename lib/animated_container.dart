import 'package:flutter/material.dart';

class MyAnimatedContainer extends StatefulWidget {
  const MyAnimatedContainer({super.key});

  @override
  State<MyAnimatedContainer> createState() => _MyAnimatedContainerState();
}

bool selected = false;

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: AnimatedContainer(
            duration: const Duration(seconds: 2),
            height: selected ? 350 : 200,
            width: selected ? 200 : 350,
            alignment: Alignment.center,
            color: selected ? Colors.blue : Colors.pinkAccent,
            curve: Curves.fastOutSlowIn, // it makes animation faster
            child: const Text(
              "Animated Container",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
