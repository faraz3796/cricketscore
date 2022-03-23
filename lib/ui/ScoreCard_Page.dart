import 'package:cricketscore/ui/changeballer.dart';
import 'package:cricketscore/ui/fall_of_wicket_Page.dart';
import 'package:cricketscore/ui/helpers.dart';
import 'package:cricketscore/ui/retire_Page.dart';
import 'package:cricketscore/widgets/text.dart';
import 'package:flutter/material.dart';
import 'dart:core';
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
      required this.replace,
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
      required this.p2sr 
      })
      : super(key: key);
  String t1, t2, ovrs, striker, nonstriker, opbowler, replace;
  int flag,opt;
 int pruns,pballs,p4s,p6s,pt1,pt2,p2runs,p2balls,p24s,p26s,totalballs,totalovers,o,extras,extrap,wickets,bover,bmaiden,
  bruns,bwickets,bballs,totalscore,oneover,batflag,wide,target,byes,legbyes,noballs,partner,currval;
  double psr,beconomy,p2sr;
 

  @override
  State<ScoreCard> createState() => _ScoreCardState(t1: t1, t2: t2, ovrs: ovrs, striker: striker, nonstriker: nonstriker, opbowler: opbowler, replace: replace, flag: flag, opt: opt, pruns: pruns, pballs: pballs, p4s: p4s, p6s: p6s, pt1: pt1, pt2: pt2, p2runs: p2runs, p2balls: p2balls, p24s: p24s, p26s: p26s, totalballs: totalballs, totalovers: totalovers, o: o, extras: extras, extrap: extrap, wickets: wickets, bover: bover, bmaiden: bmaiden, bruns: bruns, bwickets: bwickets, bballs: bballs, totalscore: totalscore, oneover: oneover, batflag: batflag, wide: wide, target: target, byes: byes, legbyes: legbyes, noballs: noballs, partner: partner, currval: currval, psr: psr, beconomy: beconomy, p2sr: p2sr);
}

class _ScoreCardState extends State<ScoreCard> {
  String t1, t2, ovrs, striker, nonstriker, opbowler, replace;
  String star1="",star2="";
  int flag,opt;
  int pruns,pballs,p4s,p6s,pt1,pt2,p2runs,p2balls,p24s,p26s,totalballs,totalovers,o=6,extras,extrap,wickets,bover,bmaiden,
  bruns,bwickets,bballs,totalscore,oneover,batflag,wide,target,byes,legbyes,noballs,partner,currval;
  double psr,beconomy=0.0,p2sr,totalstrike = 0;
  
  

  // int pruns = 0,
  //     pballs = 0,
  //     p4s = 0,
  //     p6s = 0,
  //     pt1=0,
  //     pt2=0,
      
  //     p2runs = 0,
  //     p2balls = 0,
  //     p24s = 0,
  //     p26s = 0,
   
  //     totalballs = 0,
  //     totalovers = 0,
  //     o = 6,
  //     extras=0,
  //     extrap=0,
  //     wickets = 0;
  //     double psr=0.0,
  //     beconomy = 0.0,
  //     p2sr = 0.0;
  // int bover = 0,
  //     bmaiden = 0,
  //     bruns = 0,
  //     bwickets = 0,
  //     bballs = 0,
  //     totalscore = 0,
  //     oneover = 0,
  //     batflag=1,
  //     wide=0,
  //     target=0,
  //     byes=0,
  //     legbyes=0,
  //     noballs=0,
  //     partner=0,
  //     currval=0;
      

 
  bool isWicket = false;
  bool isNoball = false;
  bool isbyes = false;
  bool islegbye = false;
  bool iswide = false;
  bool checkedvalue = false;
  _ScoreCardState(
      {required this.t1,
      required this.t2,
      required this.ovrs,
      required this.striker,
      required this.nonstriker,
      required this.opbowler,
      required this.replace,
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
      required this.p2sr
      
      });
    
List<dynamic> batsman=[];
List<dynamic> baller=[];
List<dynamic> partnership=[];
List<dynamic> fallofwicket=[];


//extrabottom
void bottomsheet()=>showModalBottomSheet(context:context, builder:(context)=>Container(
height:MediaQuery.of(context).size.height/10,
width:MediaQuery.of(context).size.width,
child:Padding(
  padding: const EdgeInsets.only(left:8.0),
  child:   Column(
    mainAxisAlignment:MainAxisAlignment.spaceAround,
    children: [
      Row(
       mainAxisAlignment:MainAxisAlignment.spaceBetween,
       children:[
         Padding(
           padding: const EdgeInsets.only(left:14.0),
           child: Text("Extras : $extras"),
         ),
         
        ],
        
      ),
      Row(
         mainAxisAlignment:MainAxisAlignment.spaceAround,
      children: [
        Text("Wides : $wide"),
         Text("No Balls :$noballs"),
                             Text("Leg Byes: $legbyes"),
         Text("Byes: $byes"), 
      ],
      )
    ],
  ),
),
)
);
//patner bottom sheet
void bottomsheetpartnership()=>showModalBottomSheet(context:context, builder:(context)=>Container(
height:MediaQuery.of(context).size.height/10,
width:MediaQuery.of(context).size.width,
child:Padding(
  padding: const EdgeInsets.only(left:8.0),
  child:   Column(
    mainAxisAlignment:MainAxisAlignment.spaceAround,
    children: [
      Row(
       mainAxisAlignment:MainAxisAlignment.spaceBetween,
       children:[
         Padding(
           padding: const EdgeInsets.only(left:14.0),
           child: Text("Partnership : $partner"),
         ),
        ],  
      ),
      Row(
         mainAxisAlignment:MainAxisAlignment.spaceAround,
      children: [
        Text("$striker : $pt1"),
        Text("$nonstriker : $pt2"),
        
      ],
      ),
       Row(
         mainAxisAlignment:MainAxisAlignment.spaceAround,
      children: [
        Text("Extras : $extrap"),
      
        
      ],
      )
    ],
  ),
),
)
);
//Target Screen
showAlertDialog(BuildContext context) {

  // set up the button
  // Widget okButton = TextButton(
  //   child: Text("OK"),
  //   onPressed: () { },
  // );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("End of ${teamtoss(flag,opt)} Innings"),
    content: Text("Team ${teamtoss(flag,opt)} has given target of $target runs in $ovrs overs."),
    actions: [
//okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}


//Toss Logic
       teamtoss(int flag,int opt){
  
     if(flag==1&&opt==1){
     return t1; 
     
     }
     if(flag==1&&opt==2){
     return t2;    
     }
         if(flag==2&&opt==1){
     return t2;    
     }
     if(flag==1&&opt==2){
     return t1;   
     }
      if(flag==2&&opt==2){
        return t1;
      }

  }
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
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.flag);
    print(widget.opt);
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
                                "${teamtoss(flag,opt)} innings",
                                style: TextStyle(fontSize: 12),
                              ),
                              Text("CRR", style: TextStyle(fontSize: 12))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("$totalscore-$wickets ($totalovers.$oneover)",
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
                          scoreCard(width, "$striker $star1", "$pruns", "$pballs",
                              "$p4s", "$p6s", "$psr"), //striker
                          SizedBox(
                            height: height / 50,
                          ),
                          scoreCard(width, "$nonstriker $star2", "$p2runs", "$p2balls",
                              "$p24s", "$p26s", "$p2sr"), //non striker
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
                          scoreCard(width, "$opbowler", "$bover.$bballs", "$bmaiden",
                              "$bruns", "$bwickets", "$beconomy"), //bowler

                        ],
                      ),
                    ),
                  ),
                ),

                //This Over

                SizedBox(
                  height: height / 70,
                ),
            
                updateOver(),
             
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
                             Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Transform.scale(
          scale: 0.7,
          child: Checkbox(
              splashRadius: 30,
              activeColor: Colors.black,
              value: iswide,
              onChanged: (valueb) {
                setState(() {
                  iswide = valueb as bool;
                 
                }
                );
              }),
        ),
        Transform.scale(scale: 0.7, child: Text("Wide")),
          Transform.scale(
          scale: 0.7,
          child: Checkbox(
              splashRadius: 30,
              activeColor: Colors.black,
              value: isNoball,
              onChanged: (valueb) {
                setState(() {
                  isNoball = valueb as bool;
                });
              }),
        ),
        Transform.scale(scale: 0.7, child: Text("No Ball")),
        Transform.scale(
          scale: 0.7,
          child: Checkbox(
              splashRadius: 30,
              activeColor: Colors.black,
              value: isbyes,
              onChanged: (valueb) {
                setState(() {
                  isbyes = valueb as bool;
                });
              }),
        ),
        Transform.scale(scale: 0.7, child: Text("Byes")),
        Transform.scale(
          scale: 0.7,
          child: Checkbox(
              splashRadius: 30,
              activeColor: Colors.black,
              value: islegbye,
              onChanged: (valueb) {
                setState(() {
                  islegbye = valueb as bool;
                  // 5
                });
              }),
        ),
        Transform.scale(scale: 0.7, child: Text("LegBye")),
      ],
    ),
    
                            ],
                          ),
                          Row(
                            children: [
                               Transform.scale(
          scale: 0.7,
          child: Checkbox(
              splashRadius: 30,
              activeColor: Colors.black,
              value: isWicket,
              onChanged: (valueb) {
                setState(() {
                  isWicket = valueb as bool;
                  if(isWicket!=false){
                    if(batflag%2!=0)
                    { pballs=pballs+1;
                   // totalballs=totalballs+1;
                    batsman.add([striker,pruns,pballs,p4s,p6s,psr]);
                    partnership.add([striker,pruns,nonstriker,p2runs,partner]);
                    partner=0; pt1=0;pt2=0;
                    wickets=wickets+1;
                    bwickets=bwickets+1;
                    if(wickets==10){
                            
                          }

                   Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>FallofWicket(striker: striker) ));
                          striker=striker; pruns=0; pballs=0; p4s=0; p6s=0; psr=0; extrap=0;
                  }}
                    if(batflag%2==0)
                    { p2balls=p2balls+1;
                    //totalballs=totalballs+1;
                     batsman.add([nonstriker,p2runs,p2balls,p24s,p26s,p2sr]);
                     partnership.add([striker,pruns,nonstriker,p2runs,partner]);
                    Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>FallofWicket(striker:nonstriker) ));
                          nonstriker=nonstriker; p2runs=0; p2balls=0; p24s=0; p26s=0; p2sr=0; extrap=0;
                          partner=0; pt1=0;pt2=0;
                          wickets=wickets+1;
                          bwickets=bwickets+1;
                          if(wickets==10){

                          }
                  }
                });
              }),
        ),
        Transform.scale(scale: 0.7, child: Text("Wicket")),
                              
                                 
                                  ],
                          ),
                          verticalSpace(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              buttons(width, context, "Retire", () {
                                Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>Retire(p1:striker, p2:nonstriker, t1: t1, t2: t2, ovrs: ovrs, striker: striker, nonstriker: nonstriker, opbowler: opbowler, flag: flag, opt: opt, pruns: pruns, pballs: pballs, p4s: p4s, p6s: p6s, pt1: pt1, pt2: pt2, p2runs: p2runs, p2balls: p2balls, p24s: p24s, p26s: p26s, totalballs: totalballs, totalovers: totalovers, o: o, extras: extras, extrap: extrap, wickets: wickets, bover: bover, bmaiden: bmaiden, bruns: bruns, bwickets: bwickets, bballs: bballs, totalscore: totalscore, oneover: oneover, batflag: batflag, wide: wide, target: target, byes: byes, legbyes: legbyes, noballs: noballs, partner: partner, currval: currval, psr: psr, beconomy: beconomy, p2sr: p2sr)));
                               
                              }),
                              buttons(width, context, "Swap Batsman", () {
                              batflag=batflag+1;

                              })
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
        //Main Scoring
        

        if(iswide==false&&isNoball==false){
          var ovs=int.parse(ovrs);
          totalballs++;
          totalscore = totalscore + value;
          currval=value;
          over.add(value);
          updateOver();
          if(batflag%2!=0){
          star1="*";
          star2=""; 
          pruns = pruns + value;
          pt1=pt1+value;
          pballs = pballs + 1;
          if(value==4){
            p4s=p4s+1;
          }
          if(value==6){
            p6s=p6s+1;
          }
          psr=((pruns/pballs)*100).roundToDouble();
            
          }
          if(batflag%2==0){
          star1="";
          star2="*";
          p2runs = p2runs + value;
          pt2=pt2+value;
          p2balls = p2balls + 1;
          if(value==4){
            p24s=p24s+1;
          }
          if(value==6){
            p26s=p26s+1;
          }
           p2sr=((p2runs/p2balls)*100).roundToDouble();
          }
            if(value%2!=0){
            batflag=batflag+1;
          }
         bballs = bballs + 1;
         beconomy=((bruns/bballs)*o).roundToDouble();
         if(bballs==6){
           bballs=0;
           bover=bover+1;
           baller.add([opbowler,bover,bballs,bruns,bwickets,beconomy]);
            Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>changeballer(t1: t1, t2: t2, ovrs: ovrs, replace: replace, opt: opt, flag: flag, striker: striker, nonstriker: nonstriker, pruns: pruns, pballs: pballs, p4s: p4s, p6s: p6s, pt1: pt1, pt2: pt2, p2runs: p2runs, p2balls: p2balls, p24s: p24s, p26s: p26s, totalballs: totalballs, totalovers: totalovers, o: o, extras: extras, extrap: extrap, wickets: wickets, bover: bover, bmaiden: bmaiden, bruns: bruns, bwickets: bwickets, bballs: bballs, totalscore: totalscore, oneover: oneover, batflag: batflag, wide: wide, target: target, byes: byes, legbyes: legbyes, noballs: noballs, partner: partner, currval: currval, psr: psr, beconomy: beconomy, p2sr: p2sr) ));
   

         }
         
          oneover+=1;
          totalstrike = (totalscore / (totalballs / o)).roundToDouble();
       
          bruns = totalscore;
        
          if(totalballs % 6 == 0){
            totalovers=totalovers+1;
            oneover=0;
            batflag=batflag+1;
          }
          //partner ship initialization
         
          partner=pt1+pt2+extrap;
          //IF Overs complete the limit
          if(ovs==totalovers){
            target=totalscore+1;
           showAlertDialog(context);
           Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>ScoreCard(t1: t1, t2: t2, ovrs: ovrs, striker: striker, nonstriker: nonstriker, opbowler: opbowler, replace: replace, flag: flag, opt: opt, pruns: pruns, pballs: pballs, p4s: p4s, p6s: p6s, pt1: pt1, pt2: pt2, p2runs: p2runs, p2balls: p2balls, p24s: p24s, p26s: p26s, totalballs: totalballs, totalovers: totalovers, o: o, extras: extras, extrap: extrap, wickets: wickets, bover: bover, bmaiden: bmaiden, bruns: bruns, bwickets: bwickets, bballs: bballs, totalscore: totalscore, oneover: oneover, batflag: batflag, wide: wide, target: target, byes: byes, legbyes: legbyes, noballs: noballs, partner: partner, currval: currval, psr: psr, beconomy: beconomy, p2sr: p2sr)));
   

          }
          
         
        }
        //wide  logic

        if(iswide!=false){
          totalscore = totalscore + value+1;
          extras=extras+value+1;
          extrap=extrap+value+1;
           if(value%2!=0){
            batflag=batflag+1;
          }
           wide=wide+1+value;
        }
        //NOBALL LOGIC
           if(isNoball!=false){
           noballs=noballs+1+value;
           extras=extras+value+1;
           extrap=extrap+value+1;
          totalscore = totalscore + value+1;
          over.add(value);
          updateOver();
          if(batflag%2!=0){
          star1="*";
          star2=""; 
          pruns = pruns + value; 
          pballs=pballs+1;
          if(value==4){
            p4s=p4s+1;
          }
          if(value==6){
            p6s=p6s+1;
          }
         
         
          }
          if(batflag%2==0){
          star1="";
          star2="*";
          p2runs = p2runs + value;
          p2balls=p2balls+1;
          if(value==4){
            p24s=p24s+1;
          }
          if(value==6){
            p26s=p26s+1;
          }
          psr=(pruns/pballs)*100; 
          }
              if(value%2!=0){
            batflag=batflag+1;
          }
            
         
         if(bballs==6){
           bballs=0;
           bover=bover+1;
           baller.add([opbowler,bover,bballs,bruns,bwickets,beconomy]);
            Navigator.push(
                       
                        context,
                        MaterialPageRoute(
                            builder: (context) => changeballer(t1: t1, t2: t2, ovrs: ovrs, replace: replace, opt: opt, flag: flag, striker: striker, nonstriker: nonstriker, pruns: pruns, pballs: pballs, p4s: p4s, p6s: p6s, pt1: pt1, pt2: pt2, p2runs: p2runs, p2balls: p2balls, p24s: p24s, p26s: p26s, totalballs: totalballs, totalovers: totalovers, o: o, extras: extras, extrap: extrap, wickets: wickets, bover: bover, bmaiden: bmaiden, bruns: bruns, bwickets: bwickets, bballs: bballs, totalscore: totalscore, oneover: oneover, batflag: batflag, wide: wide, target: target, byes: byes, legbyes: legbyes, noballs: noballs, partner: partner, currval: currval, psr: psr, beconomy: beconomy, p2sr: p2sr)));

         }  
          
          totalstrike = totalscore / (totalballs / o);
          bruns = totalscore;
           if(totalballs % 6 == 0){
            if(totalballs!=0){
            totalovers=totalovers+1;
            }
            oneover=0;
            
          }
          }
          // Byes logic
            if(isbyes!=false){
            extras=extras+value;
            extrap=extrap+value;
            byes=byes+value;
             if(batflag%2!=0)
            {
              
               if(value==1||value==3||value==5)
              {
               p2runs=p2runs-value;
              }
              else{
             pruns=pruns-value;
              }

            }
             if(batflag%2==0)
            {
              
               if(value==1||value==3||value==5)
              {
               pruns=pruns-value;
              }
              else{
             p2runs=pruns-value;
              }

            }
        }
        //legbyes Logic
         if(islegbye!=false){
              extras=extras+value;
              extrap=extrap+value;
            legbyes=legbyes+value;
             if(batflag%2!=0)
            {
              
               if(value==1||value==3||value==5)
              {
               p2runs=p2runs-value;
              }
              else{
             pruns=pruns-value;
              }

            }
             if(batflag%2==0)
            {
              
               if(value==1||value==3||value==5)
              {
               pruns=pruns-value;
              }
              else{
             p2runs=pruns-value;
              }

            }
        }
        }
        
        );
       
       
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
            setState(() {  
                bottomsheetpartnership();
              } 
            );
         // bottomsheet();
          
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

  Row Extras(String text, bool val) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Transform.scale(
          scale: 0.7,
          child: Checkbox(
              splashRadius: 30,
              activeColor: Colors.black,
              value: val,
              onChanged: (value) {
                setState(() {
                  val = value as bool;
                });
              }),
        ),
        Transform.scale(scale: 0.7, child: Text(text))
      ],
    );
  }
}

