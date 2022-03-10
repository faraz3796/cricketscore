import 'package:cricketscore/services/navigator_services.dart';
import 'package:cricketscore/ui/helpers.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MatchType extends StatefulWidget {
  MatchType({Key? key}) : super(key: key);

  @override
  State<MatchType> createState() => _MatchTypeState();
}

class _MatchTypeState extends State<MatchType> {
  bool single = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context, "Match Type"),
      body: Center(
        child: Container(
          alignment: Alignment.topCenter,
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.45,
          decoration: BoxDecoration(
              color: HexColor("#A1FFC1"),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              verticalSpace(),
              Container(
                alignment: Alignment.center,
                width: 200,
                child: Text(
                  "Start Live Scoring",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          single = true;
                        });
                      },
                      child: Container(
                        //alignment: Alignment.center,
                        width: 130,
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: single ? Colors.black : Colors.white),
                        child: Column(
                          children: [
                            Container(
                              width: 120,
                              alignment: Alignment.centerRight,
                              child: Icon(Icons.check, color: Colors.white),
                            ),
                            verticalSpace(),
                            verticalSpace(),
                            SizedBox(
                                width: 100,
                                child: Text(
                                  "Single Match",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color:
                                          single ? Colors.white : Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                )),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          single = false;
                        });
                      },
                      child: Container(
                        width: 130,
                        height: 200,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: !single ? Colors.black : Colors.white),
                        child: Column(
                          children: [
                            Container(
                              width: 120,
                              alignment: Alignment.centerRight,
                              child: Icon(Icons.check, color: Colors.white),
                            ),
                            verticalSpace(),
                            verticalSpace(),
                            SizedBox(
                                width: 100,
                                child: Text(
                                  "Complete Tournament",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color:
                                          !single ? Colors.white : Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              logButton("Submit", () {
                if (single) {
                  Navigate.navigate_to_phonenumber(context);
                } else {
                  Navigate.navigate_to_getlogin(context);
                }
              })
            ],
          ),
        ),
      ),
    );
  }
}
