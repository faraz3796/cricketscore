import 'package:cricketscore/ui/helpers.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class YoutubeScreen extends StatefulWidget {
  YoutubeScreen({Key? key}) : super(key: key);

  @override
  State<YoutubeScreen> createState() => _YoutubeScreenState();
}

class _YoutubeScreenState extends State<YoutubeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context, "Live Match"),
      body: Container(
        alignment: Alignment.topCenter,
        width: MediaQuery.of(context).size.width,
        //height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.3,
                color: HexColor("#C4C4C4"),
                child: const Icon(
                  Icons.play_circle_fill_rounded,
                  size: 40,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              adContainer(context),
              const SizedBox(
                height: 20,
              ),
              whiteScoreContainer(context),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Team 1 need 16 runs in 6 balls",
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: HexColor("#006610")),
              ),
              const SizedBox(
                height: 20,
              ),
              thisOver(context, [1, 2, 2, "w", 4, 6]),
              const SizedBox(height: 20),
              scoreHeader(context),
              const SizedBox(height: 10),
              batsmanscoreHeader(
                  context, true, "Player1", "12", "4", "1", "1", "200.0"),
              //const SizedBox(height: 5),
              batsmanscoreHeader(
                  context, false, "Player2", "12", "4", "1", "1", "200.0"),

              const SizedBox(
                height: 20,
              ),
              bowlerscoreHeader(context),
              const SizedBox(height: 10),
              bowlerscore(
                  context, true, "Bowler1", "1.4", "0", "15", "1", "8.6")
            ],
          ),
        ),
      ),
    );
  }
}
