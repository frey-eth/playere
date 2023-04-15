import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GameFeedsPage extends StatefulWidget {
  String roomID;
  String gameName;
  GameFeedsPage({Key? key, required this.roomID, required this.gameName})
      : super(key: key);

  @override
  State<GameFeedsPage> createState() => _GameFeedsPageState();
}

class _GameFeedsPageState extends State<GameFeedsPage> {
  void addPost() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: addPost,
        child: FaIcon(FontAwesomeIcons.plus),
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        child: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios)),
                Text(
                  widget.gameName,
                  style: TextStyle(fontFamily: 'Lalezar', fontSize: 17),
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}
