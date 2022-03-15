import 'package:cricketscore/ui/helpers.dart';
import 'package:cricketscore/ui/score/scorecard_team.dart';
import 'package:flutter/material.dart';

class ScorecardMain extends StatefulWidget {
  ScorecardMain({Key? key,}) : super(key: key);

 
  @override
  State<ScorecardMain> createState() => _ScorecardMainState();
}

class _ScorecardMainState extends State<ScorecardMain> {

  bool _team1 = true;
 
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: adContainer(context),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 120.0),
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
                          _team1 = true;
                        });
                      },
                      child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: 40,
                          decoration: BoxDecoration(
                              color: _team1 ? Colors.greenAccent : Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Text("Team1")),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, right: 12, bottom: 8),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _team1 = false;
                        });
                      },
                      child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: 40,
                          decoration: BoxDecoration(
                              color:
                                  !_team1 ? Colors.greenAccent : Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Text("Team2")),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 180),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.7,
            child: ScoreCardTeam(),
          ),
        )
      ],
    );
  }
}
