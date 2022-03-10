import 'package:cricketscore/widgets/text.dart';
import 'package:flutter/material.dart';

class ScoreCard extends StatefulWidget {
  ScoreCard({Key? key}) : super(key: key);

  @override
  State<ScoreCard> createState() => _ScoreCardState();
}

class _ScoreCardState extends State<ScoreCard> {
  bool checkedvalue = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("CSK v/s MI"),
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
                                "CSK, 1st inning",
                                style: TextStyle(fontSize: 12),
                              ),
                              Text("CRR", style: TextStyle(fontSize: 12))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("0.00",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              Text("0.00", style: TextStyle(fontSize: 12))
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
                          scoreCard(width, "Batsman", "0", "0", "0", "0", "0"),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Divider(
                              height: 1,
                              color: Colors.black,
                            ),
                          ),
                          scoreCard(
                              width, "Batsname name", "0", "0", "0", "0", "0"),
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
                          scoreCard(
                              width, "Batsman name", "0", "0", "0", "0", "0"),

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

                Material(
                  borderRadius: BorderRadius.circular(12),
                  elevation: 5,
                  child: Container(
                    width: width / 1,
                    height: height / 18,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextAlign(
                          text: "This Over:",
                          fontsize: 12,
                          color: Colors.black),
                    ),
                  ),
                ),

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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              buttons(width, context, "Retire"),
                              buttons(width, context, "Swap Batsman")
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
                                  scores(width, height, "0"),
                                  scores(width, height, "1"),
                                  scores(width, height, "2"),
                                  scores(width, height, "3")
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  scores(width, height, "4"),
                                  scores(width, height, "5"),
                                  scores(width, height, "6")
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

  Container scores(double width, double height, String text) {
    return Container(
      alignment: Alignment.center,
      width: width / 7,
      height: height / 18,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black), shape: BoxShape.circle),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
                context, MaterialPageRoute(builder: (context) => ScoreCard()));
          },
          child: Text(text),
          style: ElevatedButton.styleFrom(
              primary: Color(0xff25d05f),
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
        ));
  }

  SizedBox buttons(double width, BuildContext context, String text) {
    return SizedBox(
        width: width / 2.8,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ScoreCard()));
          },
          child: Text(text),
          style: ElevatedButton.styleFrom(
              primary: Color(0xff25d05f),
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
        ));
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
