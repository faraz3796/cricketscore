import 'package:cricketscore/services/navigator_services.dart';
import 'package:cricketscore/ui/bottom_bar.dart';
import 'package:cricketscore/ui/helpers.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TournamentScreen extends StatefulWidget {
  TournamentScreen({Key? key}) : super(key: key);

  @override
  State<TournamentScreen> createState() => _TournamentScreenState();
}

class _TournamentScreenState extends State<TournamentScreen> {
  bool _islive = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottomNavigationBar: BottomBar(),
      appBar: appbar(context,"Tournament"),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: HexColor("#C4C4C4"),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
            ),
            verticalSpace(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: leftText(context, "Matches"),
            ),
            verticalSpace(),
            Material(
              elevation: 5,
              borderRadius: BorderRadius.all(Radius.circular(30)),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 50,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 8.0, left: 12, bottom: 8),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _islive = true;
                          });
                        },
                        child: Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 0.4,
                            height: 40,
                            decoration: BoxDecoration(
                                color:
                                    _islive ? Colors.greenAccent : Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                            child: Text("Live")),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 8.0, right: 12, bottom: 8),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _islive = false;
                          });
                        },
                        child: Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 0.4,
                            height: 40,
                            decoration: BoxDecoration(
                                color: !_islive
                                    ? Colors.greenAccent
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                            child: Text("Past")),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            verticalSpace(),
            matchContainer(context, "Team 1", "Team 2", "Trophy"),
            verticalSpace(),
            adContainer(context),
            verticalSpace(),
            Material(
              elevation: 5,
              child: GestureDetector(
                onTap: () {
                  Navigate.navigate_to_youtube(context);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 90,
                        height: 25,
                        decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Text(
                          "LIVE VIDEO",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Team 1 vs Team 2",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Icon(
                        Icons.play_circle,
                        size: 30,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
