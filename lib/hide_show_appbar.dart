import 'package:flutter/material.dart';

class HideShow extends StatelessWidget {
  const HideShow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const SliverAppBar(
            floating: true,
            snap: true,
            title: Text("Hide on Scroll and Show"),
          ),
        ],
        body: ListView.builder(itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              "Roll:No $index",
            ),
          );
        }),
      ),
    );
  }
}
