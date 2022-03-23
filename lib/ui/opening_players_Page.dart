import 'package:cricketscore/ui/ScoreCard_Page.dart';
import 'package:cricketscore/ui/fall_of_wicket_Page.dart';
import 'package:flutter/material.dart';
import 'package:cricketscore/widgets/text.dart';

class OpeningPlayers extends StatefulWidget {
  OpeningPlayers(
      {Key? key,
      required this.t1,
      required this.t2,
      required this.ovrs,
     // required this.replace,
      required this.opt,
      required this.flag,
      // required this.pruns,
      // required this.pballs,
      // required this.p4s,
      // required this.p6s,
      // required this.pt1,
      // required this.pt2,
      // required this.p2runs,
      // required this.p2balls,
      // required this.p24s,
      // required this.p26s,
      // required this.totalballs,
      // required this.totalovers,
      // required this.o,
      // required this.extras,
      // required this.extrap,
      // required this.wickets,
      // required this.bover,
      // required this.bmaiden,
      // required this.bruns,
      // required this.bwickets,
      // required this.bballs,
      // required this.totalscore,
      // required this.oneover,
      // required this.batflag,
      // required this.wide,
      // required this.target,
      // required this.byes,
      // required this.legbyes,
      // required this.noballs,
      // required this.partner,
      // required this.currval,
      // required this.psr,
      // required this.beconomy,
      // required this.p2sr
      })
      : super(key: key);
  String t1, t2, ovrs;
  int flag,opt;
  // int pruns,pballs,p4s,p6s,pt1,pt2,p2runs,p2balls,p24s,p26s,totalballs,totalovers,o,extras,extrap,wickets,bover,bmaiden,
  // bruns,bwickets,bballs,totalscore,oneover,batflag,wide,target,byes,legbyes,noballs,partner,currval;
  // double psr,beconomy,p2sr;
  @override
  State<OpeningPlayers> createState() =>_OpeningPlayersState(t1: t1, t2: t2, ovrs: ovrs, opt: opt, flag: flag);
}

class _OpeningPlayersState extends State<OpeningPlayers> {
  TextEditingController strikerController =
      TextEditingController(text: "Player 1");
  TextEditingController nonStrikerController =
      TextEditingController(text: "Player 2");
  TextEditingController openingBowlerController =
      TextEditingController(text: "Bowler 1");
  _OpeningPlayersState(
      {required this.t1,
      required this.t2,
      required this.ovrs,
      // required this.replace,
      required this.opt,
      required this.flag,
      //  required this.pruns,
      // required this.pballs,
      // required this.p4s,
      // required this.p6s,
      // required this.pt1,
      // required this.pt2,
      // required this.p2runs,
      // required this.p2balls,
      // required this.p24s,
      // required this.p26s,
      // required this.totalballs,
      // required this.totalovers,
      // required this.o,
      // required this.extras,
      // required this.extrap,
      // required this.wickets,
      // required this.bover,
      // required this.bmaiden,
      // required this.bruns,
      // required this.bwickets,
      // required this.bballs,
      // required this.totalscore,
      // required this.oneover,
      // required this.batflag,
      // required this.wide,
      // required this.target,
      // required this.byes,
      // required this.legbyes,
      // required this.noballs,
      // required this.partner,
      // required this.currval,
      // required this.psr,
      // required this.beconomy,
      // required this.p2sr
      });
  String t1, t2, ovrs;
  //replace;
  int flag,opt;
  // int pruns,pballs,p4s,p6s,pt1,pt2,p2runs,p2balls,p24s,p26s,totalballs,totalovers,o,extras,extrap,wickets,bover,bmaiden,
  // bruns,bwickets,bballs,totalscore,oneover,batflag,wide,target,byes,legbyes,noballs,partner,currval;
  // double psr,beconomy,p2sr;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Select Opening Players"),
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(children: [
            SizedBox(
              height: height / 35,
            ),
            TextAlign(text: "Striker", fontsize: 18, color: Color(0xff25d05f)),
            textField("Player name", strikerController),
            SizedBox(
              height: height / 15,
            ),
            TextAlign(
                text: "Non-Striker", fontsize: 18, color: Color(0xff25d05f)),
            textField("Player name", nonStrikerController),
            SizedBox(
              height: height / 15,
            ),
            TextAlign(
                text: "Opening bowler", fontsize: 18, color: Color(0xff25d05f)),
            textField("Player name", openingBowlerController),
            SizedBox(
              height: height / 15,
            ),
            SizedBox(
                width: width / 1.5,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ScoreCard(t1: t1, t2: t2, ovrs: ovrs, striker:strikerController.text, nonstriker: nonStrikerController.text, opbowler: openingBowlerController.text,replace:"", flag: flag, opt: opt, pruns:0, pballs:0, p4s:0, p6s:0, pt1:0, pt2:0, p2runs:0, p2balls:0, p24s: 0, p26s: 0, totalballs: 0, totalovers: 0, o: 0, extras:0, extrap:0, wickets:0, bover: 0, bmaiden: 0, bruns: 0, bwickets: 0, bballs: 0, totalscore: 0, oneover: 0, batflag: 1, wide: 0, target: 0, byes: 0, legbyes: 0, noballs: 0, partner: 0, currval: 0, psr: 0, beconomy: 0, p2sr:0)));
                  },
                  child: Text("Start match"),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff25d05f),
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                ))
          ]),
        ),
      ]),
    );
  }

  TextField textField(String hintText, TextEditingController controller) {
    return TextField(
        controller: controller,
        decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.black26)));
  }
}
 //FallofWicket()  