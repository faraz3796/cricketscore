import 'package:cricketscore/ui/ScoreCard_Page.dart';
import 'package:cricketscore/ui/opening_players_Page.dart';
import 'package:flutter/material.dart';
import 'package:cricketscore/widgets/text.dart';

class AdminPanel extends StatefulWidget {
  AdminPanel({Key? key, required this.replace}) : super(key: key);
  String replace;
  @override
  State<AdminPanel> createState() => _AdminPanelState(replace);
}

class _AdminPanelState extends State<AdminPanel> {
  String replace;
  _AdminPanelState(this.replace);
  TextEditingController teamOne = TextEditingController(text: "Team 1");
  TextEditingController teamTwo = TextEditingController(text: "Team 2");
  TextEditingController Overs = TextEditingController();

  int _value = 1;
  int modeval = 1;
  int tossval = 1;
  int optval = 1;
  int flag=0;
  int opt=0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Admin Panel"),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: height / 70,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(children: [
              //Mode

              TextAlign(
                text: "Mode?",
                fontsize: 15,
                color: Colors.black,
              ),
              SizedBox(height: height / 100),
              Material(
                  borderRadius: BorderRadius.circular(12),
                  elevation: 5,
                  child: Container(
                    width: width / 1,
                    height: height / 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(children: [  //MODE
                          Radio(
                              activeColor: Colors.black,
                              value: 1,
                              groupValue: modeval,
                              onChanged: (value) {
                                setState(() {
                                  modeval = value as int;
                                  print(modeval);
                                });
                              }),
                          Text(
                            "Test Mode",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ]),
                        Row(children: [
                          Radio(
                              activeColor: Colors.black,
                              value: 2,
                              groupValue: modeval,
                              onChanged: (value) {
                                setState(() {
                                  modeval = value as int;
                                  print(modeval);
                                });
                              }),
                          Text("Live Mode",
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ]),
                      ],
                    ),
                  )),

                   // Video Stream Link

              SizedBox(
                height: height / 50,
              ),
              TextAlign(
                  text: "Video Stream Link", fontsize: 14, color: Colors.black),
              SizedBox(height: height / 100),
              Material(
                borderRadius: BorderRadius.circular(12),
                elevation: 5,
                child: Container(
                  width: width / 1,
                  height: height / 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
              ),

              //Teams

              SizedBox(
                height: height / 50,
              ),
              TextAlign(text: "Teams", fontsize: 15, color: Colors.black),
              SizedBox(
                height: height / 80,
              ),
              Material(
                borderRadius: BorderRadius.circular(12),
                elevation: 5,
                child: Container(
                  width: width / 1,
                  height: height / 6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        textFieldTeams("Team One Name", teamOne),
                        textFieldTeams("Team Two Name", teamTwo)
                      ],
                    ),
                  ),
                ),
              ),

              //Toss Won by?
              SizedBox(height: height / 50),
              TextAlign(
                  text: "Toss Won by?", fontsize: 15, color: Colors.black),
              SizedBox(
                height: height / 80,
              ),
              Material(
                  borderRadius: BorderRadius.circular(12),
                  elevation: 5,
                  child: Container(
                    width: width / 1,
                    height: height / 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(children: [
                          Radio(
                              activeColor: Colors.black,
                              value: 1,
                              groupValue: tossval,
                              onChanged: (value) {
                                setState(() {
                                  tossval = value as int;
                                  flag=value as int;
                                  print(tossval);
                                });
                              }),
                          Text(
                            teamOne.text,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ]),
                        Row(children: [
                          Radio(
                              activeColor: Colors.black,
                              value: 2,
                              groupValue: tossval,
                              onChanged: (value) {
                                setState(() {
                                  tossval = value as int;
                                  flag=value as int;
                                });
                              }),
                          Text(teamTwo.text,
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ]),
                      ],
                    ),
                  )),

              //Opted To?

              SizedBox(
                height: height / 50,
              ),
              TextAlign(text: "Opted To", fontsize: 15, color: Colors.black),
              SizedBox(height: height / 100),
              //radiobutton(width, height, "Bat", "Bowl", optval),
              Material(
                  borderRadius: BorderRadius.circular(12),
                  elevation: 5,
                  child: Container(
                    width: width / 1,
                    height: height / 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(children: [
                          Radio(
                              activeColor: Colors.black,
                              value: 1,
                              groupValue: optval,
                              onChanged: (value) {
                                setState(() {
                                  optval = value as int;
                                  opt=value as int;
                                  print(optval);
                                });
                              }),
                          Text(
                            "Bat",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ]),
                        Row(children: [
                          Radio(
                              activeColor: Colors.black,
                              value: 2,
                              groupValue: optval,
                              onChanged: (value) {
                                setState(() {
                                  optval = value as int;
                                  opt=value as int;
                                  print(optval);
                                });
                              }),
                          Text("Bowl",
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ]),
                      ],
                    ),
                  )),

              //Overs?

              SizedBox(
                height: height / 50,
              ),
              TextAlign(text: "Overs?", fontsize: 15, color: Colors.black),
              Material(
                borderRadius: BorderRadius.circular(12),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextField(
                      controller: Overs,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: "20",
                          hintStyle:
                              TextStyle(fontSize: 14, color: Colors.black26))),
                ),
              ),

              //Advanced Settings Button
              SizedBox(
                height: height / 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Advanced Settings",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )),

                  //Start Match Button

                  SizedBox(
                      width: width / 2.8,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OpeningPlayers(
                                          t1: teamOne.text,
                                          t2: teamTwo.text,
                                          ovrs: Overs.text,
                                          replace: replace,
                                          flag:flag,
                                          opt:opt
                                        )));
                          });
                        },
                        child: Text("Start Match"),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xff25d05f),
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                      ))
                ],
              )
            ]),
          )
        ],
      ),
    );
  }

  TextField textFieldTeams(String hintText, TextEditingController controller) {
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
           hintStyle: TextStyle(fontSize: 14, color: Colors.black26)));
  

  
  }
 
  
}
