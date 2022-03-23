import 'package:cricketscore/ui/ScoreCard_Page.dart';
import 'package:cricketscore/ui/fall_of_wicket_Page.dart';
import 'package:flutter/material.dart';
import 'package:cricketscore/widgets/text.dart';

class changeballer extends StatefulWidget {
  changeballer(
      {Key? key,
      required this.t1,
      required this.t2,
      required this.ovrs,
      required this.replace,
      required this.opt,
      required this.flag,
      required this.striker,
      required this.nonstriker,
      required this.pruns,
      required this.pballs,
      required this.p4s,
      required this.p6s,
      required this.pt1,
      required this.pt2,
      required this.p2runs,
      required this.p2balls,
      required this.p24s,
      required this.p26s,
      required this.totalballs,
      required this.totalovers,
      required this.o,
      required this.extras,
      required this.extrap,
      required this.wickets,
      required this.bover,
      required this.bmaiden,
      required this.bruns,
      required this.bwickets,
      required this.bballs,
      required this.totalscore,
      required this.oneover,
      required this.batflag,
      required this.wide,
      required this.target,
      required this.byes,
      required this.legbyes,
      required this.noballs,
      required this.partner,
      required this.currval,
      required this.psr,
      required this.beconomy,
      required this.p2sr

      })
      : super(key: key);
  String t1, t2, ovrs, replace,striker,nonstriker;
  int flag,opt;
  int pruns,pballs,p4s,p6s,pt1,pt2,p2runs,p2balls,p24s,p26s,totalballs,totalovers,o,extras,extrap,wickets,bover,bmaiden,
  bruns,bwickets,bballs,totalscore,oneover,batflag,wide,target,byes,legbyes,noballs,partner,currval;
  double psr,beconomy,p2sr,totalstrike = 0;


  @override
  State<changeballer> createState() =>
      _changeballerState(t1: t1, t2: t2, ovrs: ovrs, replace: replace, opt: opt, flag: flag, striker: striker, nonstriker: nonstriker, pruns: pruns, pballs: pballs, p4s: p4s, p6s: p6s, pt1: pt1, pt2: pt2, p2runs: p2runs, p2balls: p2balls, p24s: p24s, p26s: p26s, totalballs: totalballs, totalovers: totalovers, o: o, extras: extras, extrap: extrap, wickets: wickets, bover: bover, bmaiden: bmaiden, bruns: bruns, bwickets: bwickets, bballs: bballs, totalscore: totalscore, oneover: oneover, batflag: batflag, wide: wide, target: target, byes: byes, legbyes: legbyes, noballs: noballs, partner: partner, currval: currval, psr: psr, beconomy: beconomy, p2sr: p2sr);
}

class _changeballerState extends State<changeballer> {

  TextEditingController openingBowlerController =
      TextEditingController(text: "Bowler 1");
  _changeballerState(
      {required this.t1,
      required this.t2,
      required this.ovrs,
      required this.replace,
      required this.opt,
      required this.flag,
      required this.striker,
      required this.nonstriker,
      required this.pruns,
      required this.pballs,
      required this.p4s,
      required this.p6s,
      required this.pt1,
      required this.pt2,
      required this.p2runs,
      required this.p2balls,
      required this.p24s,
      required this.p26s,
      required this.totalballs,
      required this.totalovers,
      required this.o,
      required this.extras,
      required this.extrap,
      required this.wickets,
      required this.bover,
      required this.bmaiden,
      required this.bruns,
      required this.bwickets,
      required this.bballs,
      required this.totalscore,
      required this.oneover,
      required this.batflag,
      required this.wide,
      required this.target,
      required this.byes,
      required this.legbyes,
      required this.noballs,
      required this.partner,
      required this.currval,
      required this.psr,
      required this.beconomy,
      required this.p2sr
      });
  String t1, t2, ovrs, replace,striker,nonstriker;
  int flag,opt;
   int pruns,pballs,p4s,p6s,pt1,pt2,p2runs,p2balls,p24s,p26s,totalballs,totalovers,o,extras,extrap,wickets,bover,bmaiden,
  bruns,bwickets,bballs,totalscore,oneover,batflag,wide,target,byes,legbyes,noballs,partner,currval;
  double psr,beconomy,p2sr,totalstrike = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Select New Baller"),
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(children: [
            
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
                            builder: (context) => ScoreCard(t1: t1, t2: t2, ovrs: ovrs, striker: striker, nonstriker: nonstriker, opbowler:openingBowlerController.text, replace: replace, flag:widget.flag, opt:widget.opt, pruns: pruns, pballs: pballs, p4s: p4s, p6s: p6s, pt1: pt1, pt2: pt2, p2runs: p2runs, p2balls: p2balls, p24s: p24s, p26s: p26s, totalballs: totalballs, totalovers: totalovers, o: o, extras: extras, extrap: extrap, wickets: wickets, bover: bover, bmaiden: bmaiden, bruns: bruns, bwickets: bwickets, bballs: bballs, totalscore: totalscore, oneover: oneover, batflag: batflag, wide: wide, target: target, byes: byes, legbyes: legbyes, noballs: noballs, partner: partner, currval: currval, psr: psr, beconomy: beconomy, p2sr: p2sr)));
                  },
                  child: Text("Scorecard"),
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