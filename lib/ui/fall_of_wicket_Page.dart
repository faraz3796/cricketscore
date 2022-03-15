import 'package:cricketscore/ui/get_login.dart';
import 'package:cricketscore/ui/retire_Page.dart';
import 'package:flutter/material.dart';
import 'package:cricketscore/widgets/text.dart';


class FallofWicket extends StatefulWidget {
  FallofWicket({Key? key}) : super(key: key);

  @override
  State<FallofWicket> createState() => _FallofWicketState();
}

class _FallofWicketState extends State<FallofWicket> {
  TextEditingController whoHelped = TextEditingController();
  TextEditingController newBatsman = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(title: Text("Fall of wicket")),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(children: [
              SizedBox(
                height: height / 35,
              ),
              TextAlign(
                  text: "How wicket fall? ",
                  fontsize: 16,
                  color: Color(0xff25d05f)),
              SizedBox(
                height: height / 80,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Run out striker"),
                      Icon(Icons.arrow_drop_down)
                    ]),
              ),
              SizedBox(
                height: height / 35,
              ),
              TextAlign(
                  text: "Who got out?", fontsize: 16, color: Color(0xff25d05f)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Player name"),
                      Icon(Icons.arrow_drop_down)
                    ]),
              ),
              SizedBox(
                height: height / 35,
              ),
              TextAlign(
                  text: "Who helped?", fontsize: 16, color: Color(0xff25d05f)),
              textField("name", whoHelped),
              SizedBox(
                height: height / 35,
              ),
              TextAlign(
                  text: "New Batsman", fontsize: 16, color: Color(0xff25d05f)),
              textField("name", newBatsman),
              SizedBox(
                height: height / 15,
              ),
              SizedBox(
                  width: width / 1.5,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>GetLogin() ));  //Retire(t1: t1, t2: t2)
                    },
                    child: Text("Done"),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xff25d05f),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                  ))
            ]),
          ),
        ]));
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
