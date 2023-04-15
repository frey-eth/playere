import 'package:flutter/material.dart';
import 'package:playere/services/auth_service.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  Widget _buildArrowBackBtn() {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          width: 40,
          height: 40,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent, elevation: 0),
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildCenterIcon() {
    return Expanded(
      child: Image.asset(
        'assets/images/iconremovebg.png',
        height: 100,
        width: 100,
      ),
    );
  }

  Widget _buildTextSignUp() {
    return Text(
      'Sign Up',
      style: TextStyle(
          fontSize: 18,
          color: Color.fromARGB(255, 182, 182, 182),
          decoration: TextDecoration.none,
          fontWeight: FontWeight.bold),
    );
  }

  Widget _buildLoginBtn() {
    return Container(
      margin: EdgeInsets.all(20),
      width: 280,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 32, 32, 32),
              Color.fromARGB(255, 138, 137, 137),
            ],
          )),
      child: TextButton(
        onPressed: () => AuthService().signInWithGoogle(),
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/images/google.png'),
            Text(
              'Continue with google',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          body: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(255, 0, 0, 0),
                  Color.fromARGB(255, 63, 62, 62),
                ],
              )),
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _buildArrowBackBtn(),
                    _buildCenterIcon(),
                    _buildTextSignUp(),
                    _buildLoginBtn(),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              )),
        ));
  }
}
