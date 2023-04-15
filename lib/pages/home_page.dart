import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:playere/pages/direct_page.dart';
import 'package:playere/pages/game_page.dart';
import 'package:playere/pages/profile_page.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _currentIndex = 1;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black45,
      bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: [
            FontAwesomeIcons.comments,
            Icons.gamepad_outlined,
            FontAwesomeIcons.user
          ],
          backgroundColor: Color.fromARGB(255, 105, 93, 105),
          activeColor: Colors.pinkAccent,
          gapLocation: GapLocation.none,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          leftCornerRadius: 35,
          rightCornerRadius: 35,
          activeIndex: _currentIndex,
          onTap: (index) => setState(() => _currentIndex = index)),
      body: IndexedStack(
        index: _currentIndex,
        children: [DirectPage(), GamePage(), Profile()],
      ),
    );
  }
}
