import 'package:cricketscore/ui/helpers.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LiveScore extends StatefulWidget {
  LiveScore({Key? key}) : super(key: key);

  @override
  State<LiveScore> createState() => _LiveScoreState();
}

class _LiveScoreState extends State<LiveScore> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          blackScoreContainer(context),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Team 1 need 16 runs in 6 balls",
            style: TextStyle(
                fontWeight: FontWeight.w600, color: HexColor("#006610")),
          ),
          const SizedBox(
            height: 10,
          ),
          adContainer(context),
          const SizedBox(
            height: 10,
          ),
          thisOver(context),
          const SizedBox(
            height: 10,
          ),
          scoreHeader(context),
          const SizedBox(
            height: 10,
          ),
          batsmanscoreHeader(
              context, true, "Player 1", "22", "12", "1", "2", "160.0"),
          // const SizedBox(
          //   height: 5,
          // ),
          batsmanscoreHeader(
              context, false, "Player 2", "22", "12", "1", "2", "160.0"),
          const SizedBox(
            height: 10,
          ),
          bowlerscoreHeader(context),
          bowlerscore(context, true, "Bowler1", "1.4", "0", "15", "1", "8.6"),
          const SizedBox(
            height: 10,
          ),
          commentaryHeader(context),
          const SizedBox(
            height: 10,
          ),
          commentaryLine(context, "4.2", "player1", "bowler1", "0"),
          commentaryLine(context, "4.3", "player1", "bowler1", "4")
        ],
      ),
    );
  }

  SizedBox commentaryLine(
      BuildContext context, String over, String bat, String bowl, String run) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6),
        child: Row(
          children: [
            Text(over),
            const SizedBox(
              width: 10,
            ),
            Text(bat),
            const Text(" to "),
            Text("$bowl,"),
            const SizedBox(
              width: 5,
            ),
            Text("$run run")
          ],
        ),
      ),
    );
  }
}
