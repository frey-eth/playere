import 'package:flutter/material.dart';
import 'package:playere/pages/game_feeds.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  Widget _buildGameImage(String imgPath, String gameName, onTap) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.all(5),
          child: ElevatedButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                EdgeInsets.zero,
              ),
              backgroundColor: MaterialStateProperty.all<Color>(
                Colors.transparent,
              ),
            ),
            onPressed: onTap,
            child: Image.asset(
              imgPath,
              height: 220,
              width: 120,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          gameName.toUpperCase(),
          style: TextStyle(
              color: Colors.white, fontFamily: 'Lalezar', fontSize: 13),
        )
      ],
    );
  }

  void onTapGame(String roomID,String gameName){
    Navigator.push(context,
                MaterialPageRoute(builder: (context) =>GameFeedsPage(roomID: roomID,gameName: gameName,)));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.all(15),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const Text(
                  'Trò chơi',
                  style: TextStyle(
                      fontFamily: 'Lalezar', color: Colors.white, fontSize: 30),
                )
              ],
            ),
            const Text(
              'Trên các thiết bị máy tính',
              style: TextStyle(
                  fontFamily: 'Lalezar', color: Colors.white, fontSize: 22),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(255, 64, 163, 163),
                      Color.fromARGB(255, 138, 137, 137),
                      Color.fromARGB(255, 133, 83, 167),
                    ],
                  )),
              height: 270,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildGameImage(
                    'assets/images/lolpc.jpg',
                    "League of legends",
                    ()=>onTapGame('lol', "League of legends"),
                  ),
                  _buildGameImage(
                    'assets/images/valorant.jpg',
                    "Valorant",
                    ()=>onTapGame('valorant', "Valorant"),
                  ),
                  _buildGameImage(
                    'assets/images/pubg.jpg',
                    "PUBG",
                    ()=>onTapGame('pubg',"PlayerUnknown's Battlegrounds"),
                  ),
                ],
              ),
            ),
            const Text(
              'Trên các thiết bị di động',
              style: TextStyle(
                  fontFamily: 'Lalezar', color: Colors.white, fontSize: 22),
            ),
            Container(
              height: 270,
              decoration: BoxDecoration(
                  border: Border.all(),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(255, 64, 163, 163),
                      Color.fromARGB(255, 138, 137, 137),
                      Color.fromARGB(255, 133, 83, 167),
                    ],
                  )),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildGameImage(
                    'assets/images/wr.jpg',
                    "Tốc chiến",
                    ()=>onTapGame('wildrift','Tốc Chiến'),
                  ),
                  _buildGameImage(
                    'assets/images/lienquan.jpg',
                    "Liên Quân Mobile",
                    ()=>onTapGame('arenaofvalor', 'Liên Quân Mobile'),
                  ),
                  _buildGameImage(
                    'assets/images/freefire.jpg',
                    "Free Fire",
                    ()=>onTapGame('freefire','Free Fire'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
