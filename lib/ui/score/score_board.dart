import 'package:cricketscore/ui/helpers.dart';
import 'package:cricketscore/ui/score/livescore.dart';
import 'package:cricketscore/ui/score/scorecard.dart';
import 'package:flutter/material.dart';

class ScoreBorad extends StatefulWidget {
  ScoreBorad({Key? key}) : super(key: key);

  @override
  State<ScoreBorad> createState() => _ScoreBoradState();
}

class _ScoreBoradState extends State<ScoreBorad> {
  bool _islive = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context, "Scoreboard"),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.all(Radius.circular(30)),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.95,
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
                            child: Text("Live Score")),
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
                            child: Text("Scorecard")),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width,
              child: _islive ? LiveScore() : ScorecardMain(),
            ),
          )
        ],
      ),
    );
  }
}
