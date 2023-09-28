import 'package:flutter/material.dart';
import 'package:flutter_animation/Animated%20drawer/main_screen.dart';
import 'package:flutter_animation/Animated%20drawer/menu_screen.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class DrawerAnimation extends StatelessWidget {
  const DrawerAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuScreen: const MenuScreen(),
      mainScreen: const MainScreen(),
      angle: -12, // angle 0 to -30 only
      slideWidth: MediaQuery.of(context).size.width,
      menuScreenWidth: MediaQuery.of(context).size.width,
      showShadow: true,
      shadowLayer1Color: Colors.amber,
      drawerShadowsBackgroundColor: Colors.pink,
    );
  }
}
