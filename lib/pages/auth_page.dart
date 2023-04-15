import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:playere/pages/home_page.dart';
import 'package:playere/pages/sign_up.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  Future addUserDetails(document) async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(document.data!.uid)
        .set({
      'email': document.data!.email,
      'uid': document.data!.uid,
      'displayName': document.data!.displayName,
      'photoUrl': document.data!.photoURL,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            addUserDetails(snapshot);
            return HomePage();
          } else {
            return const SignUpPage();
          }
        },
      ),
    );
  }
}
