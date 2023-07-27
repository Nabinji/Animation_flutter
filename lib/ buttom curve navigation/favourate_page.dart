import 'package:flutter/material.dart';

class FavouratePage extends StatelessWidget {
  const FavouratePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 22, 233, 222),
      body: Center(
        child: Text(
          "Favourate",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 60,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
