import 'package:cricketscore/ui/helpers.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PlayerInfoScreen extends StatefulWidget {
  PlayerInfoScreen({Key? key}) : super(key: key);

  @override
  State<PlayerInfoScreen> createState() => _PlayerInfoScreenState();
}

class _PlayerInfoScreenState extends State<PlayerInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context,"Player Information"),
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Positioned.fill(
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 382,
                height: 125,
                decoration: BoxDecoration(
                    color: HexColor("#A1FFC1"),
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                verticalSpace(),
                verticalSpace(),
                verticalSpace(),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: HexColor("#c4c4c4")),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Player Name",
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Role: Batsman",
                  style: TextStyle(fontSize: 14),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 60,
                  alignment: Alignment.center,
                  child: Row(
                    children: const [
                      Icon(Icons.favorite, color: Colors.redAccent),
                      const SizedBox(
                        width: 10,
                      ),
                      Text("12")
                    ],
                  ),
                ),
                verticalSpace(),
                batsmanInfo("Born", "14-Apr-2021"),
                batsmanInfo("Batting Style", "Right Hand Batsman"),
                batsmanInfo("Bowling Style", "Right Hand OffSpin"),
                batsmanInfo("Location", "India"),
                verticalSpace(),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Text(
                        "About - Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor rhoncus dolor purus non enim praesent elementum facilisis le"))
              ],
            ),
          ),
        )
      ]),
    );
  }

  Padding batsmanInfo(String qual, String qual1) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            qual,
            style: TextStyle(fontSize: 14),
          ),
          Text(
            qual1,
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
