import 'package:cricketscore/services/navigator_services.dart';
import 'package:cricketscore/ui/bottom_bar.dart';
import 'package:cricketscore/ui/helpers.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:date_time_picker/date_time_picker.dart';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class RegisterPlayer extends StatefulWidget {
  RegisterPlayer({Key? key}) : super(key: key);

  @override
  State<RegisterPlayer> createState() => _RegisterPlayerState();
}

class _RegisterPlayerState extends State<RegisterPlayer> {
  TextEditingController name = TextEditingController();
  List<String> country = ["India", "Pakistan"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbar(context, "Join Player"),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                verticalSpace(),
                Image.asset(
                  "assets/register.png",
                  width: 250,
                  height: 250,
                ),
                verticalSpace(),
                const Text(
                  "Register and join player list",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                verticalSpace(),
                Container(
                  decoration: BoxDecoration(
                      color: HexColor("#2ecc71").withOpacity(0.6),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25)),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: TextFormField(
                              //controller: cont,
                              cursorColor: Colors.black,
                              cursorHeight: 25,
                              cursorWidth: 2,
                              cursorRadius: Radius.circular(20),
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  hintText: "Full name",
                                  //focusedBorder: InputBorder.none,
                                  border: InputBorder.none),
                            ),
                          ),
                        ),
                        verticalSpace(),
                        CSCPicker(
                          onCountryChanged: (value) {},
                          onStateChanged: (value) {},
                          onCityChanged: (value) {},
                        ),
                        verticalSpace(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [dobFirld(), dropmenu("Role", country)],
                        ),
                        verticalSpace(),
                        //verticalSpace()
                      ],
                    ),
                  ),
                ),
                verticalSpace(),
                GestureDetector(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => BottomBar()),
                        (route) => false);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: HexColor("#6685FF"),
                        borderRadius: BorderRadius.circular(15)),
                    child: Text("Submit",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        )),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Container dropmenu(String hint, List<String> sam) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
          color: HexColor("#F0F0F0"), borderRadius: BorderRadius.circular(30)),
      child: DropdownButtonFormField(
          decoration: InputDecoration(
            hintText: hint,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          ),
          items: sam.map((String val) {
            return DropdownMenuItem(
              value: val,
              child: Text(
                val,
              ),
            );
          }).toList(),
          onChanged: (v) {
            print(v);
          }),
    );
  }
}

class dobFirld extends StatelessWidget {
  const dobFirld({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      //height: 60,
      width: 140,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      child: DateTimePicker(
        //dateHintText: "DOB",
        decoration: InputDecoration(
            suffixIcon: Icon(Icons.arrow_drop_down),
            hintText: "DOB",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
        initialValue: '',
        firstDate: DateTime(2000),
        lastDate: DateTime(2100),
        //dateLabelText: 'Date',
        onChanged: (val) => print(val),
        validator: (val) {
          print(val);
          return null;
        },
        onSaved: (val) => print(val),
      ),
    );
  }
}
