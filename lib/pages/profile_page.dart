import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
    void signOut() async {
    await FirebaseAuth.instance.signOut();
    Navigator.pop(context);
  }
  Widget build(BuildContext context) {
    return SafeArea(child: TextButton(onPressed: signOut,child: Icon(Icons.logout),));
  }
}
