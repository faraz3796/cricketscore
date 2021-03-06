import 'package:cricketscore/ui/fall_of_wicket_Page.dart';
import 'package:flutter/material.dart';
import 'package:cricketscore/widgets/text.dart';

class OpeningPlayers extends StatefulWidget {
  OpeningPlayers({Key? key}) : super(key: key);

  @override
  State<OpeningPlayers> createState() => _OpeningPlayersState();
}

class _OpeningPlayersState extends State<OpeningPlayers> {
  TextEditingController strikerController = TextEditingController();
  TextEditingController nonStrikerController = TextEditingController();
  TextEditingController openingBowlerController = TextEditingController();

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
                            builder: (context) => FallofWicket()));
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
