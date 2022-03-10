import 'package:country_state_city_picker/country_state_city_picker.dart';
import 'package:cricketscore/services/navigator_services.dart';
import 'package:cricketscore/ui/helpers.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PlayerFilterSearch extends StatefulWidget {
  PlayerFilterSearch({Key? key}) : super(key: key);

  @override
  State<PlayerFilterSearch> createState() => _PlayerFilterSearchState();
}

class _PlayerFilterSearchState extends State<PlayerFilterSearch> {
  TextEditingController _search = TextEditingController();
  String countryValue = "";
  String stateValue = "";
  String cityValue = "";
  String address = "";
  List<String> role = ["Batsman", "Bowler"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context, "Search Player"),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            verticalSpace(),
            searchField(_search, "Search Player Name, ID"),
            verticalSpace(),
            verticalSpace(),
            CSCPicker(
              onCountryChanged: (value) {},
              onStateChanged: (value) {},
              onCityChanged: (value) {},
            ),
            verticalSpace(),
            verticalSpace(),
            verticalSpace(),
            Container(
              decoration: BoxDecoration(
                  color: HexColor("#F0F0F0"),
                  borderRadius: BorderRadius.circular(30)),
              child: DropdownButtonFormField(
                  decoration: InputDecoration(
                      hintText: "Roll",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                  items: role.map((String val) {
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
            ),
            verticalSpace(),
            verticalSpace(),
            Material(
              elevation: 10.0,
              borderRadius: BorderRadius.all(Radius.circular(30)),
              child: GestureDetector(
                onTap: () {
                  Navigate.navigate_to_playerlist(context);
                },
                child: Container(
                  width: 150,
                  height: 47,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: HexColor("#6685FF")),
                  child: Text("Submit"),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Material(
              elevation: 10.0,
              borderRadius: BorderRadius.all(Radius.circular(30)),
              child: GestureDetector(
                onTap: () {
                  Navigate.navigate_to_addplayer(context);
                },
                child: Container(
                  width: 248,
                  height: 47,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: HexColor("#6685FF")),
                  child: Text("Create My Cricket Profile"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
