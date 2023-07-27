import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation/%20buttom%20curve%20navigation/favourate_page.dart';
import 'package:flutter_animation/%20buttom%20curve%20navigation/home_pag.dart';
import 'package:flutter_animation/%20buttom%20curve%20navigation/profile_page.dart';
import 'package:flutter_animation/%20buttom%20curve%20navigation/search_page.dart';
import 'package:flutter_animation/%20buttom%20curve%20navigation/setting_page.dart';

class CurveBar extends StatefulWidget {
  const CurveBar({super.key});

  @override
  State<CurveBar> createState() => _CurveBarState();
}

class _CurveBarState extends State<CurveBar> {
  int index = 2;
  final screen = const [
    HomePage(),
    SearchPage(),
    FavouratePage(),
    ProfilePage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = [
      const Icon(Icons.home, size: 30),
      const Icon(Icons.search, size: 30),
      const Icon(Icons.favorite, size: 30),
      const Icon(Icons.person, size: 30),
      const Icon(Icons.settings, size: 30)
    ];
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      extendBody: true,
      appBar: AppBar(
        title: const Text("Curve Navigation Bar"),
        centerTitle: true,
      ),
      body: screen[index],
      // Center(
      //   child: Text(
      //     '$index',
      //     style: const TextStyle(
      //         fontSize: 110, fontWeight: FontWeight.bold, color: Colors.white),
      //   ),
      // ),
      bottomNavigationBar: Theme(
        // this them is for to change icon colors.
        data: Theme.of(context).copyWith(
            iconTheme: const IconThemeData(
          color: Colors.white,
        )),
        child: CurvedNavigationBar(
          // navigationBar colors
          color: const Color.fromARGB(255, 231, 46, 207),
          //selected times colors
          buttonBackgroundColor: const Color.fromARGB(255, 241, 41, 6),
          backgroundColor: Colors.transparent,
          items: items,
          height: 60,
          index: index,
          onTap: (index) => setState(
            () => this.index = index,
          ),
        ),
      ),
    );
  }
}
