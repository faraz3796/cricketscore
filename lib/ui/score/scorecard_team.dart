import 'package:cricketscore/ui/helpers.dart';
import 'package:flutter/material.dart';

class ScoreCardTeam extends StatefulWidget {
  ScoreCardTeam({Key? key}) : super(key: key);

  @override
  State<ScoreCardTeam> createState() => _ScoreCardTeamState();
}

class _ScoreCardTeamState extends State<ScoreCardTeam> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          inningsHeader(context, "Team 1", "28/2 (5.2 Ov)"),
          whitescoreHeader(context),
          mainbatsmanscorecard(context, true, "Player 1", "22", "12", "1", "2",
              "160.0", "fielder", "bowler"),
          mainbatsmanscorecard(context, false, "Player 1", "22", "12", "1", "2",
              "160.0", "bowler", "fielder"),
          const SizedBox(
            height: 10,
          ),
          bowlerscoreHeader(context),
          bowlerscore(context, false, "Bowler1", "1.4", "0", "15", "1", "8.6"),
          fallofwicketsHeader(context),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("1. Batsman"), Text("16(2.0)")],
            ),
          )
        ],
      ),
    );
  }
}
