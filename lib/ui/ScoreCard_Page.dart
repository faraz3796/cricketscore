import 'package:cricketscore/ui/helpers.dart';
import 'package:cricketscore/ui/retire_Page.dart';
import 'package:cricketscore/widgets/text.dart';
import 'package:flutter/material.dart';

import 'opening_players_Page.dart';

class ScoreCard extends StatefulWidget {
  ScoreCard(
      {Key? key,
      required this.t1,
      required this.t2,
      required this.ovrs,
      required this.striker,
      required this.nonstriker,
      required this.opbowler,
      required this.replace})
      : super(key: key);
  String t1, t2, ovrs, striker, nonstriker, opbowler, replace;

  @override
  State<ScoreCard> createState() => _ScoreCardState(
      t1: t1,
      t2: t2,
      ovrs: ovrs,
      striker: striker,
      nonstriker: nonstriker,
      opbowler: opbowler,
      replace: replace);
}

class _ScoreCardState extends State<ScoreCard> {
  String t1, t2, ovrs, striker, nonstriker, opbowler, replace;
  int pruns = 0,
      pballs = 0,
      p4s = 0,
      p6s = 0,
      psr = 0,
      totalballs = 0,
      totalovers = 0,
      o = 6,
      wickets = 0;
  int bover = 0,
      bmaiden = 0,
      bruns = 0,
      bwickets = 0,
      beconomy = 0,
      bballs = 0,
      totalscore = 0,
      oneover = 0;
  double totalstrike = 0;
  bool checkedvalue = false;
  _ScoreCardState(
      {required this.t1,
      required this.t2,
      required this.ovrs,
      required this.striker,
      required this.nonstriker,
      required this.opbowler,
      required this.replace});
  List over = [];
  String xxx = "";
  int x = 1;
  updateOver() {
    List sam = [];
    setState(() {
      sam = over;
    });
    return thisOver(context, sam);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("$t1 v/s $t2"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: ListView(children: [
            Column(
              children: [
                SizedBox(
                  height: height / 70,
                ),
                Material(
                  borderRadius: BorderRadius.circular(12),
                  elevation: 5,
                  child: Container(
                    width: width / 1,
                    height: height / 12,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "$t1, 1st inning",
                                style: TextStyle(fontSize: 12),
                              ),
                              Text("CRR", style: TextStyle(fontSize: 12))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("$totalscore-$wickets",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              Text("$totalstrike",
                                  style: TextStyle(fontSize: 12))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                //ScoreCard
                SizedBox(
                  height: height / 70,
                ),
                Material(
                  borderRadius: BorderRadius.circular(12),
                  elevation: 5,
                  child: Container(
                    width: width / 1,
                    height: height / 4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          scoreCard(
                              width, "Batsman", "R", "B", "4s", "6s", "SR"),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Divider(
                              height: 1,
                              color: Colors.black,
                            ),
                          ),
                          scoreCard(width, "$striker*", "$pruns", "$pballs",
                              "$p4s", "$p6s", "$p6s"), //striker
                          SizedBox(
                            height: height / 50,
                          ),
                          scoreCard(width, "$nonstriker", "$pruns", "$pballs",
                              "$p4s", "$p6s", "$p6s"), //non striker
                          SizedBox(
                            height: height / 50,
                          ),
                          scoreCard(width, "Bowler", "O", "M", "R", "W", "ER"),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Divider(
                              height: 1,
                              color: Colors.black,
                            ),
                          ),
                          scoreCard(width, "$opbowler", "$bballs", "$bmaiden",
                              "$bruns", "$bwickets", "$beconomy"), //bowler

                          //  scorecard("Batsman name*", "0", "0", "0", "0", "0"),
                        ],
                      ),
                    ),
                  ),
                ),

                //This Over

                SizedBox(
                  height: height / 70,
                ),
                // Container(
                //   width: MediaQuery.of(context).size.width,
                //   height: 150,

                // child: ListView.builder(
                //     itemCount: over.length,
                //     scrollDirection: Axis.horizontal,
                //     itemBuilder: (BuildContext context, index) {
                //       return run(over[index].toString());
                //     }),
                // ),
                updateOver(),
                //Text(xxx),
                // Material(
                //   borderRadius: BorderRadius.circular(12),
                //   elevation: 5,
                //   child: Container(
                //     width: width / 1,
                //     height: height / 18,
                //     decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(12),
                //         color: Colors.white),
                //     child: Padding(
                //       padding: const EdgeInsets.all(8.0),
                //       child: TextAlign(
                //           text: "This Over: $oneover",
                //           fontsize: 12,
                //           color: Colors.black),
                //     ),
                //   ),
                // ),

                //Check Selection

                SizedBox(
                  height: height / 70,
                ),
                Material(
                    borderRadius: BorderRadius.circular(12),
                    elevation: 5,
                    child: Container(
                      width: width / 1,
                      height: height / 4.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Extras("Wide"),
                              Extras("No Ball"),
                              Extras("Byes"),
                              Extras("Legs")
                            ],
                          ),
                          Row(
                            children: [Extras("Byes"), Extras("Wicket")],
                          ),
                          verticalSpace(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              buttons(width, context, "Retire", () {
                                print("hi");
                                // setState(() {
                                //   x++;
                                //   over.add(x.toString());
                                // });
                              }),
                              buttons(width, context, "Swap Batsman", () {})
                            ],
                          )
                        ],
                      ),
                    )),

                //Scores
                SizedBox(
                  height: height / 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Material(
                        borderRadius: BorderRadius.circular(12),
                        elevation: 5,
                        child: Container(
                          width: width / 3,
                          height: height / 5.5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              scores_button(height, width, context, "Undo"),
                              scores_button(
                                  height, width, context, "Partnership"),
                              scores_button(height, width, context, "Extras")
                            ],
                          ),
                        )),
                    Material(
                        borderRadius: BorderRadius.circular(12),
                        elevation: 5,
                        child: Container(
                          width: width / 1.7,
                          height: height / 5.5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  scores(width, height, "0", 0),
                                  scores(width, height, "1", 1),
                                  scores(width, height, "2", 2),
                                  scores(width, height, "3", 3)
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  scores(width, height, "4", 4),
                                  scores(width, height, "5", 5),
                                  scores(width, height, "6", 6)
                                ],
                              ),
                            ],
                          ),
                        )),
                  ],
                )
              ],
            ),
          ])),
    );
  }

  Row scoreCard(double width, String role, String runs, String balls,
      String fours, String sixes, String strikerate) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(width: width / 5, child: Text(role)),
        Container(width: width / 10, child: Text(runs)),
        Container(width: width / 10, child: Text(balls)),
        Container(width: width / 10, child: Text(fours)),
        Container(width: width / 10, child: Text(sixes)),
        Container(width: width / 10, child: Text(strikerate)),
      ],
    );
  }

  Widget scores(double width, double height, String text, int value) {
    return GestureDetector(
      onTap: () {
        setState(() {
          totalballs++;
          totalscore = totalscore + value;
          pruns = pruns + value;
          over.add(value);
          updateOver();
          pballs = pballs + 1;
          bballs = bballs + 1;
          if (totalballs % 6 == 0) {
            oneover = 0;
          } else {
            oneover = oneover + value;
          }
          totalstrike = totalscore / (totalballs / o);
          totalstrike = totalstrike.abs();
          bruns = totalscore;
          if (value == 1 || value == 3 || value == 5 || totalballs % 6 == 0) {
            OpeningPlayers(
              t1: t1,
              t2: t2,
              ovrs: ovrs,
              replace: replace,
            );
          }
        });
      },
      child: Container(
        alignment: Alignment.center,
        width: width / 7,
        height: height / 18,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black), shape: BoxShape.circle),
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }

  SizedBox scores_button(
      double height, double width, BuildContext context, String text) {
    return SizedBox(
        height: height / 25,
        width: width / 3.3,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ScoreCard(
                        t1: t1,
                        t2: t2,
                        ovrs: ovrs,
                        striker: striker,
                        nonstriker: nonstriker,
                        opbowler: opbowler,
                        replace: replace)));
          },
          child: Text(text),
          style: ElevatedButton.styleFrom(
              primary: Color(0xff25d05f),
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
        ));
  }

  Widget buttons(
      double width, BuildContext context, String text, VoidCallback fun) {
    return GestureDetector(
      onTap: fun,
      child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Color(0xff25d05f),
              borderRadius: BorderRadius.circular(12)),
          width: width / 2.8,
          height: MediaQuery.of(context).size.height / 25,
          child: Text(
            text,
            style: TextStyle(color: Colors.white),
          )),
    );
  }

  Row Extras(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Transform.scale(
          scale: 0.7,
          child: Checkbox(
              splashRadius: 30,
              activeColor: Colors.black,
              value: checkedvalue,
              onChanged: (Newvalue) {
                setState(() {
                  checkedvalue = Newvalue as bool;
                });
              }),
        ),
        Transform.scale(scale: 0.7, child: Text(text))
      ],
    );
  }
}
