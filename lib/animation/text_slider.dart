import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class TextSlider extends StatelessWidget {
  const TextSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // we have set this image as a background
          Image.network(
            "https://static.toiimg.com/imagenext/toiblogs/photo/readersblog/wp-content/uploads/2021/12/adorable-cavalier-king-charles-spaniel-puppy-royalty-dog.jpg",
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
          ),
          Container(
            // we can place it where we have want.
            margin: const EdgeInsets.only(top: 400),
            color: Colors.blue,
            height: 50,
            child: Marquee(
              blankSpace: 10,
              // text speed
              // if we set velovit negative slide opposite direction.
              velocity: -100,
              text: "My Name si Pet and Everyone Loves Me.",
              style: const TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
