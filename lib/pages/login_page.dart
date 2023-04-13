import 'package:flutter/material.dart';
import 'package:playere/pages/phonenumber_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color.fromARGB(255, 0, 0, 0),
          Color.fromARGB(255, 84, 87, 90),
        ],
      )),
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Image.asset('assets/images/logoremovebg.png'),
          SizedBox(
            height: 40,
          ),
          Text(
            'Find gamer friends',
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                decoration: TextDecoration.none),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'FIND YOUR GAMER SOULMATE',
            style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 122, 121, 121),
                decoration: TextDecoration.none),
          ),
          SizedBox(
            height: 200,
          ),
          Text(
            'Tap to start playere!',
            style: TextStyle(
                fontSize: 14,
                color: Color.fromARGB(255, 122, 121, 121),
                decoration: TextDecoration.none),
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  PhoneNumberPage())),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent, elevation: 0),
            child: Image.asset(
              'assets/images/iconremovebg.png',
              height: 100,
              width: 100,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            '©2023 Playere. All rights reserved.',
            style: TextStyle(
                fontSize: 10,
                color: Color.fromARGB(255, 122, 121, 121),
                decoration: TextDecoration.none),
          ),
        ],
      ),
    ));
  }
}
