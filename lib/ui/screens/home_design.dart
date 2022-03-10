import 'package:cricketscore/services/navigator_services.dart';
import 'package:cricketscore/ui/helpers.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePageScreen extends StatefulWidget {
  HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cricket Scorer"),
          automaticallyImplyLeading: false,
          backgroundColor: HexColor("#6685FF"),
        ),
        body: Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    color: Colors.grey.withOpacity(0.3),
                    child: Column(
                      children: [
                        topBoxScroll(context),
                        //verticalSpace(),
                        feattureFullView(context, "Featured Tournament"),

                        const SizedBox(
                          height: 15,
                        ),
                        feattureFullView(context, "Local Tournaments")
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: leftText(context, "All Matches"),
                ),
                matchContainer(context, "Team 1", "Team 2", "Trophy"),
                verticalSpace(),
                adContainer(context),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigate.navigate_to_addplayer(context);
                        },
                        child: Text("Add player")),
                    ElevatedButton(
                        onPressed: () {
                          Navigate.navigate_to_playerscreen(context);
                        },
                        child: Text("search player")),
                    ElevatedButton(
                        onPressed: () {
                          Navigate.navigate_to_playerlist(context);
                        },
                        child: Text("player list ")),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigate.navigate_to_score(context);
                        },
                        child: Text("score")),
                    ElevatedButton(
                        onPressed: () {
                          Navigate.navigate_to_tournament(context);
                        },
                        child: Text("Tournament")),
                    ElevatedButton(
                        onPressed: () {
                          Navigate.navigate_to_youtube(context);
                        },
                        child: Text("Youtube Live")),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
