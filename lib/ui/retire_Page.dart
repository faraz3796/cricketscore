import 'package:cricketscore/ui/admin_panel.dart';
import 'package:flutter/material.dart';

class Retire extends StatefulWidget {
  Retire({Key? key,required this.p1,required this.p2}) : super(key: key);
String p1,p2;
  @override
  State<Retire> createState() => _RetireState(p1,p2);
}

class _RetireState extends State<Retire> {
  int _value = 1;
  String p1,p2;
  _RetireState(this.p1,this.p2);
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
                                builder: (context) => AdminPanel(replace:replacedBy.text)));
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
