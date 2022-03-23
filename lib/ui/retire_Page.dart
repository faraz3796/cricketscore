import 'package:cricketscore/ui/ScoreCard_Page.dart';
import 'package:cricketscore/ui/admin_panel.dart';
import 'package:flutter/material.dart';

class Retire extends StatefulWidget {
  Retire({Key? key,required this.p1,required this.p2,required this.t1,
      required this.t2,
      required this.ovrs,
      required this.striker,
      required this.nonstriker,
      required this.opbowler,
      required this.flag,
      required this.opt,
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
      required this.p2sr}) : super(key: key);
String p1,p2;
String t1, t2, ovrs, striker, nonstriker, opbowler;
   int flag,opt;
   int pruns,pballs,p4s,p6s,pt1,pt2,p2runs,p2balls,p24s,p26s,totalballs,totalovers,o,extras,extrap,wickets,bover,bmaiden,
  bruns,bwickets,bballs,totalscore,oneover,batflag,wide,target,byes,legbyes,noballs,partner,currval;
  double psr,beconomy,p2sr;
  @override
  State<Retire> createState() => _RetireState(p1, p2, t1, t2, ovrs, striker, nonstriker, opbowler, flag, opt, pruns, pballs, p4s, p6s, pt1, pt2, p2runs, p2balls, p24s, p26s, totalballs, totalovers, o, extras, extrap, wickets, bover, bmaiden, bruns, bwickets, bballs, totalscore, oneover, batflag, wide, target, byes, legbyes, noballs, partner, currval, psr, beconomy, p2sr);
}

class _RetireState extends State<Retire> {
  int _value = 1;
  String p1,p2;
  _RetireState(this.p1,this.p2, this.t1,
       this.t2,
        this.ovrs,
       this.striker,
       this.nonstriker,
       this.opbowler,
         this.flag,
         this.opt,
         this.pruns,
         this.pballs,
         this.p4s,
         this.p6s,
         this.pt1,
         this.pt2,
         this.p2runs,
         this.p2balls,
         this.p24s,
         this.p26s,
         this.totalballs,
         this.totalovers,
         this.o,
         this.extras,
         this.extrap,
         this.wickets,
         this.bover,
         this.bmaiden,
         this.bruns,
         this.bwickets,
         this.bballs,
         this.totalscore,
         this.oneover,
         this.batflag,
         this.wide,
         this.target,
         this.byes,
         this.legbyes,
         this.noballs,
         this.partner,
         this.currval,
         this.psr,
         this.beconomy,
         this.p2sr);
  String t1, t2, ovrs, striker, nonstriker, opbowler;
   int flag,opt;
   int pruns,pballs,p4s,p6s,pt1,pt2,p2runs,p2balls,p24s,p26s,totalballs,totalovers,o,extras,extrap,wickets,bover,bmaiden,
  bruns,bwickets,bballs,totalscore,oneover,batflag,wide,target,byes,legbyes,noballs,partner,currval;
  double psr,beconomy,p2sr,totalstrike = 0;
  TextEditingController replacedBy = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Retire"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: height / 35,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Select Player to Retire",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff25d05f)),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  height: height / 35,
                ),
                ListTile(
                  title: Text("$p1",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  leading: Radio(
                      activeColor: Colors.black,
                      value: 1,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value as int;
                           p1=replacedBy.text;
                        });
                      }),
                ),
                ListTile(
                  title: Text("$p2",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  leading: Radio(
                      activeColor: Colors.black,
                      value: 2,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value as int;
                          p2=replacedBy.text;
                        });
                      }),
                ),
                SizedBox(
                  height: height / 15,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Replaced By?",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff25d05f)),
                    textAlign: TextAlign.left,
                  ),
                ),
                TextField(
                    controller: replacedBy,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        hintText: "name",
                        hintStyle: TextStyle(color: Colors.black26))),
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
                                builder: (context) => ScoreCard(t1: t1, t2: t2, ovrs: ovrs, striker: striker, nonstriker: nonstriker, opbowler: opbowler, replace:replacedBy.text, flag: flag, opt: opt, pruns: pruns, pballs: pballs, p4s: p4s, p6s: p6s, pt1: pt1, pt2: pt2, p2runs: p2runs, p2balls: p2balls, p24s: p24s, p26s: p26s, totalballs: totalballs, totalovers: totalovers, o: o, extras: extras, extrap: extrap, wickets: wickets, bover: bover, bmaiden: bmaiden, bruns: bruns, bwickets: bwickets, bballs: bballs, totalscore: totalscore, oneover: oneover, batflag: batflag, wide: wide, target: target, byes: byes, legbyes: legbyes, noballs: noballs, partner: partner, currval: currval, psr: psr, beconomy: beconomy, p2sr: p2sr)));
                      },
                      child: Text("Done"),
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xff25d05f),
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12))),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
