import 'package:flutter/material.dart';

class DirectPage extends StatefulWidget {
  const DirectPage({super.key});

  @override
  State<DirectPage> createState() => _DirectPageState();
}

class _DirectPageState extends State<DirectPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Text('Direct Screen'),
    );
  }
}
