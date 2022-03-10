import 'package:country_code_picker/country_code_picker.dart';
import 'package:cricketscore/services/navigator_services.dart';
import 'package:cricketscore/ui/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:hexcolor/hexcolor.dart';

Widget verticalSpace() {
  return const SizedBox(
    height: 30,
  );
}

Padding textField(String hint, TextEditingController cont, bool ispass) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15.0),
    child: Container(
      alignment: Alignment.center,
      height: 60,
      decoration: BoxDecoration(
          color: HexColor("#A1FFC1"), borderRadius: BorderRadius.circular(25)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: TextFormField(
          obscureText: ispass,
          controller: cont,
          cursorColor: Colors.white,
          cursorHeight: 25,
          cursorWidth: 2,
          cursorRadius: Radius.circular(20),
          textAlign: TextAlign.center,
          decoration: InputDecoration(
              hintText: hint,
              focusedBorder: InputBorder.none,
              border: InputBorder.none),
        ),
      ),
    ),
  );
}

Bounceable logButton(String title, VoidCallback fun) {
  return Bounceable(
    onTap: fun,
    child: Container(
      width: 200,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: HexColor('#6685FF'), borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    ),
  );
}

Widget phoneField(BuildContext context, TextEditingController phone) {
  return Material(
    elevation: 4,
    child: Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.3,
          child: CountryCodePicker(
            onChanged: print,
            // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
            initialSelection: 'IN',
            favorite: const ['+91', 'IN'],
            // optional. Shows only country name and flag
            showCountryOnly: false,
            // optional. Shows only country name and flag when popup is closed.
            showOnlyCountryWhenClosed: false,
            // optional. aligns the flag and the Text left
            alignLeft: false,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.65,
          child: TextField(
            keyboardType: TextInputType.phone,
            controller: phone,
            cursorColor: Colors.black,
            decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black))),
          ),
        ),
      ],
    ),
  );
}

Bounceable colorButton(BuildContext context, String title, VoidCallback fun) {
  return Bounceable(
      onTap: fun,
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width * 0.7,
        height: 60,
        decoration: BoxDecoration(
            color: HexColor("#A1FFC1"),
            borderRadius: BorderRadius.circular(15)),
        child: Text(title),
      ));
}

Widget hometopBox(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: MediaQuery.of(context).size.width * 0.85,
      height: 150,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: HexColor("#C4C4C4").withOpacity(0.6),
            blurRadius: 2,
            offset: Offset(2, 4))
      ], color: HexColor("#C4C4C4"), borderRadius: BorderRadius.circular(10)),
    ),
  );
}

Padding topBoxScroll(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: [
          hometopBox(context),
          hometopBox(context),
          hometopBox(context)
        ],
      ),
    ),
  );
}

SingleChildScrollView featureTournamentView(context) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    physics: BouncingScrollPhysics(),
    child: Row(
      children: [
        featureTournament(context, "RWAY TROPHY", "GUNA 2022"),
        featureTournament(context, "RWAY TROPHY", "GUNA 2022"),
        featureTournament(context, "RWAY TROPHY", "GUNA 2022"),
        featureTournament(context, "RWAY TROPHY", "GUNA 2022"),
        featureTournament(context, "RWAY TROPHY", "GUNA 2022"),
      ],
    ),
  );
}

Widget featureTournament(context, String name, String desc) {
  return GestureDetector(
    onTap: () {
      Navigate.navigate_to_tournament(context);
    },
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: HexColor("#C4C4C4")),
          ),
        ),
        Text(
          name,
          style: TextStyle(fontSize: 12),
        ),
        Text(
          desc,
          style: TextStyle(fontSize: 12),
        )
      ],
    ),
  );
}

SizedBox leftText(BuildContext context, String title) {
  return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Text(title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)));
}

Container feattureFullView(BuildContext context, String title) {
  return Container(
    decoration: BoxDecoration(color: Colors.white, boxShadow: [
      BoxShadow(
          color: HexColor("#C4C4C4").withOpacity(0.6),
          blurRadius: 2,
          offset: Offset(2, 4))
    ]),
    height: 180,
    width: MediaQuery.of(context).size.width,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            InkWell(
              onTap: () {
                Navigate.navigate_to_allmatches(context);
              },
              child: Text(
                "View All",
                style: TextStyle(color: Colors.blueAccent),
              ),
            )
          ]),
          featureTournamentView(context),
        ],
      ),
    ),
  );
}

Container liveTag(BuildContext context) {
  return Container(
    alignment: Alignment.centerLeft,
    width: MediaQuery.of(context).size.width,
    child: Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 1),
      child: Container(
        alignment: Alignment.center,
        width: 100,
        height: 25,
        decoration: BoxDecoration(
            color: HexColor("#DC143C"),
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10))),
        child: Text(
          "Live",
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
  );
}

Container versusTag() {
  return Container(
    alignment: Alignment.center,
    width: 31,
    height: 43,
    decoration: BoxDecoration(
        color: HexColor("#F0F2F1"),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), bottomRight: Radius.circular(10))),
    child: Text(
      "Vs",
      style: TextStyle(fontWeight: FontWeight.w600),
    ),
  );
}

Padding matchTeams(BuildContext context, String team1, String team2) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
            width: MediaQuery.of(context).size.width * 0.3,
            child: Text(
              team1,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
        versusTag(),
        SizedBox(
            width: MediaQuery.of(context).size.width * 0.3,
            child: Text(
              team2,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ))
      ],
    ),
  );
}

Widget matchContainer(BuildContext context, String t1, String t2, String tour) {
  return Material(
    elevation: 6,
    borderRadius: BorderRadius.all(Radius.circular(30)),
    child: GestureDetector(
      onTap: () {
        Navigate.navigate_to_score(context);
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: 150,
        decoration: BoxDecoration(
            color: HexColor("#F7FFFA"),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            liveTag(context),
            const SizedBox(
              height: 15,
            ),
            matchTeams(context, t1, t2),
            const SizedBox(
              height: 10,
            ),
            Text(
              tour,
              style: const TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    ),
  );
}

Container adContainer(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.9,
    height: 100,
    decoration: BoxDecoration(
        color: HexColor("#E2E2E2"), borderRadius: BorderRadius.circular(10)),
  );
}

Padding newsFeed(
  BuildContext context,
) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: GestureDetector(
      onTap: () {
        Navigate.navigate_to_newsdetails(context);
      },
      child: Row(
        children: [
          Container(
            height: 118,
            width: 144,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: HexColor("#C4C4C4")),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.58,
                height: 80,
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis Lorem ipsum dolor sit amet, consectetur....",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.58,
                  child: Text(
                    "11/02/2022 02:34 pm",
                    style: TextStyle(color: Colors.black.withOpacity(0.4)),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}

AppBar appbar(context,String title ) {
  return AppBar(
    title: Text(title),
    backgroundColor: HexColor("#6685FF"),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BottomBar()));
            },
            child: Icon(Icons.home)),
      )
    ],
  );
}

Padding searchField(TextEditingController cont, String hint) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Material(
      elevation: 10.0,
      borderRadius: BorderRadius.all(Radius.circular(30)),
      child: Container(
        decoration: BoxDecoration(
            color: HexColor("#F0F0F0"),
            borderRadius: BorderRadius.circular(30)),
        child: TextField(
          controller: cont,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
              suffixIcon: Icon(Icons.search),
              hintText: hint,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
        ),
      ),
    ),
  );
}

Column singleScore(String team, String score, String overs) {
  return Column(
    children: [
      Text(team),
      const SizedBox(
        height: 10,
      ),
      Text(
        score,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      const SizedBox(
        height: 10,
      ),
      Text(overs),
    ],
  );
}

Material whiteScoreContainer(BuildContext context) {
  return Material(
    elevation: 3,
    borderRadius: BorderRadius.circular(20),
    child: Container(
      width: MediaQuery.of(context).size.width * 0.95,
      height: 150,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Text(
            "Batting Team Name",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                singleScore("Team 1", "25/2", "5.2/6"),
                Text(
                  "Vs",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                singleScore("Team 2", "0/0", "0.0/6"),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Padding Six() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 4.0),
    child: Container(
      alignment: Alignment.center,
      width: 50,
      height: 50,
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: Colors.pinkAccent),
      child: Text("6"),
    ),
  );
}

Padding four() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 4.0),
    child: Container(
      alignment: Alignment.center,
      width: 50,
      height: 50,
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: Colors.yellowAccent),
      child: Text("4"),
    ),
  );
}

Padding wicKet() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 4.0),
    child: Container(
      alignment: Alignment.center,
      width: 50,
      height: 50,
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: Colors.redAccent),
      child: Text("W"),
    ),
  );
}

Padding run(String r) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 4.0),
    child: Container(
      alignment: Alignment.center,
      width: 50,
      height: 50,
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      child: Text(r),
    ),
  );
}

Container scoreHeader(BuildContext context) {
  return Container(
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width * 0.95,
    height: 40,
    decoration: BoxDecoration(
        color: HexColor("##A1FFC1"), borderRadius: BorderRadius.circular(20)),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: const [
          Text("Batsman"),
          SizedBox(
            width: 120,
          ),
          SizedBox(width: 30, child: Text("R")),
          SizedBox(width: 30, child: Text("B")),
          SizedBox(width: 30, child: Text("6s")),
          SizedBox(width: 30, child: Text("4s")),
          SizedBox(width: 40, child: Text("SR")),
        ],
      ),
    ),
  );
}

Container batsmanscoreHeader(
  BuildContext context,
  bool face,
  String name,
  String r,
  String b,
  String six,
  String four,
  String sr,
) {
  return Container(
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width * 0.95,
    height: 40,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          face ? Text("$name*") : Text("$name "),
          const SizedBox(
            width: 120,
          ),
          //Text(r),
          SizedBox(
            width: 30,
            child: Text(r),
          ),
          SizedBox(
            width: 30,
            child: Text(b),
          ),
          SizedBox(
            width: 30,
            child: Text(six),
          ),

          SizedBox(
            width: 30,
            child: Text(four),
          ),
          SizedBox(
            width: 40,
            child: Text(sr),
          ),
        ],
      ),
    ),
  );
}

Container bowlerscoreHeader(BuildContext context) {
  return Container(
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width * 0.95,
    height: 40,
    decoration: BoxDecoration(
        color: HexColor("##A1FFC1"), borderRadius: BorderRadius.circular(20)),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: const [
          Text("Bowler"),
          SizedBox(
            width: 145,
          ),
          Text("O"),
          SizedBox(
            width: 20,
          ),
          Text("M"),
          SizedBox(
            width: 20,
          ),
          Text("R"),
          SizedBox(
            width: 20,
          ),
          Text("W"),
          SizedBox(
            width: 20,
          ),
          Text("ER")
        ],
      ),
    ),
  );
}

Container bowlerscore(
  BuildContext context,
  bool face,
  String name,
  String o,
  String m,
  String r,
  String w,
  String er,
) {
  return Container(
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width * 0.95,
    height: 40,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          face ? Text("$name *") : Text("$name   "),
          const SizedBox(
            width: 120,
          ),
          Text(o),
          const SizedBox(
            width: 20,
          ),
          Text(m),
          const SizedBox(
            width: 20,
          ),
          Text(r),
          const SizedBox(
            width: 20,
          ),
          Text(w),
          const SizedBox(
            width: 20,
          ),
          Text(er)
        ],
      ),
    ),
  );
}

Material blackScoreContainer(BuildContext context) {
  return Material(
    elevation: 3,
    borderRadius: BorderRadius.circular(20),
    child: Container(
      width: MediaQuery.of(context).size.width * 0.95,
      height: 180,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.black),
      child: Column(
        children: [
          const SizedBox(height: 5),
          Text(
            "Batting Team Name",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                blacksingleScore(
                  "Team 1",
                  "25/2",
                  "5.2/6",
                ),
                const Text(
                  "Vs",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                blacksingleScore("Team 2", "0/0", "0.0/6"),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "Team1 won the toss and decided to bat first",
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    ),
  );
}

Stack thisOver(BuildContext context) {
  return Stack(
    alignment: Alignment.topCenter,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.95,
          height: 80,
          decoration: BoxDecoration(
            color: HexColor(
              "#A1FFC1",
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  run("1"),
                  run("2"),
                  run("2"),
                  wicKet(),
                  four(),
                  Six(),
                ],
              ),
            ),
          ),
        ),
      ),
      Container(
        alignment: Alignment.center,
        width: 100,
        height: 40,
        decoration: BoxDecoration(
            color: HexColor("#6685FF"),
            borderRadius: BorderRadius.circular(20)),
        child: Text(
          "This Over",
          style: TextStyle(color: Colors.white),
        ),
      ),
    ],
  );
}

Column blacksingleScore(String team, String score, String overs) {
  return Column(
    children: [
      Text(
        team,
        style: TextStyle(color: Colors.white),
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        score,
        style: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        overs,
        style: TextStyle(color: Colors.white),
      ),
    ],
  );
}

Container commentaryHeader(BuildContext context) {
  return Container(
    alignment: Alignment.centerLeft,
    width: MediaQuery.of(context).size.width * 0.95,
    height: 40,
    decoration: BoxDecoration(
        color: HexColor("##A1FFC1"), borderRadius: BorderRadius.circular(20)),
    child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Text(
          "Commentary",
          style: TextStyle(fontWeight: FontWeight.w500),
        )),
  );
}

Container inningsHeader(BuildContext context, String team, String score) {
  return Container(
      alignment: Alignment.centerLeft,
      width: MediaQuery.of(context).size.width * 0.95,
      height: 40,
      decoration: BoxDecoration(
          color: HexColor("##A1FFC1"), borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                "$team Innings ",
                style: const TextStyle(fontWeight: FontWeight.w500),
              )),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                score,
                style: const TextStyle(fontWeight: FontWeight.w500),
              )),
        ],
      ));
}

Container whitescoreHeader(BuildContext context) {
  return Container(
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width * 0.95,
    height: 40,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: const [
          Text(
            "Batsman",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: 120,
          ),
          SizedBox(
              width: 30,
              child: Text(
                "R",
                style: TextStyle(fontWeight: FontWeight.w600),
              )),
          SizedBox(
              width: 30,
              child: Text(
                "B",
                style: TextStyle(fontWeight: FontWeight.w600),
              )),
          SizedBox(
              width: 30,
              child: Text(
                "6s",
                style: TextStyle(fontWeight: FontWeight.w600),
              )),
          SizedBox(
              width: 30,
              child: Text(
                "4s",
                style: TextStyle(fontWeight: FontWeight.w600),
              )),
          SizedBox(
              width: 40,
              child: Text(
                "SR",
                style: TextStyle(fontWeight: FontWeight.w600),
              )),
        ],
      ),
    ),
  );
}

Widget mainbatsmanscorecard(
    BuildContext context,
    bool face,
    String name,
    String r,
    String b,
    String six,
    String four,
    String sr,
    String bb,
    String cc) {
  return Column(
    children: [
      Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width * 0.95,
        height: 40,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: [
              Text(name),
              const SizedBox(
                width: 120,
              ),
              //Text(r),
              SizedBox(
                width: 30,
                child: Text(r),
              ),
              SizedBox(
                width: 30,
                child: Text(b),
              ),
              SizedBox(
                width: 30,
                child: Text(six),
              ),

              SizedBox(
                width: 30,
                child: Text(four),
              ),
              SizedBox(
                width: 40,
                child: Text(sr),
              ),
            ],
          ),
        ),
      ),
      Container(
          width: MediaQuery.of(context).size.width * 0.9,
          child: face
              ? Text("Playing..",
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.4),
                  ))
              : Text("c $cc b $bb",
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.4),
                  )))
    ],
  );
}

Container fallofwicketsHeader(BuildContext context) {
  return Container(
    alignment: Alignment.centerLeft,
    width: MediaQuery.of(context).size.width * 0.95,
    height: 40,
    decoration: BoxDecoration(
        color: HexColor("##A1FFC1"), borderRadius: BorderRadius.circular(20)),
    child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Text(
          "Fall Of Wickets",
          style: TextStyle(fontWeight: FontWeight.w500),
        )),
  );
}
