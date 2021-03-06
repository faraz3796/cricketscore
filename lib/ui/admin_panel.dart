import 'package:cricketscore/ui/ScoreCard_Page.dart';
import 'package:flutter/material.dart';
import 'package:cricketscore/widgets/text.dart';

class AdminPanel extends StatefulWidget {
  AdminPanel({Key? key}) : super(key: key);

  @override
  State<AdminPanel> createState() => _AdminPanelState();
}

class _AdminPanelState extends State<AdminPanel> {
  TextEditingController teamOne = TextEditingController();
  TextEditingController teamTwo = TextEditingController();
  TextEditingController Overs = TextEditingController();

  int _value = 1;
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
              radiobutton(width, height, "Test Mode", "Live Mode"),

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
              radiobutton(width, height, "Team One", "Team Two"),

              //Opted To?

              SizedBox(
                height: height / 50,
              ),
              TextAlign(text: "Opted To", fontsize: 15, color: Colors.black),
              SizedBox(height: height / 100),
              radiobutton(width, height, "Bat", "Bowl"),

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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ScoreCard()));
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

  Material radiobutton(
      double width, double height, String text1, String text2) {
    return Material(
      borderRadius: BorderRadius.circular(12),
      elevation: 5,
      child: Container(
        width: width / 1,
        height: height / 20,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(children: [
              Radio(
                  activeColor: Colors.black,
                  value: 1,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value as int;
                    });
                  }),
              Text(
                text1,
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ]),
            Row(children: [
              Radio(
                  activeColor: Colors.black,
                  value: 2,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value as int;
                    });
                  }),
              Text(text2, style: TextStyle(fontWeight: FontWeight.bold))
            ]),
          ],
        ),
      ),
    );
  }
}
