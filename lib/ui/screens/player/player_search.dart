import 'package:cricketscore/ui/helpers.dart';
import 'package:cricketscore/ui/screens/player/player_info.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PlayerSearchScreen extends StatefulWidget {
  PlayerSearchScreen({Key? key}) : super(key: key);

  @override
  State<PlayerSearchScreen> createState() => _PlayerSearchScreenState();
}

class _PlayerSearchScreenState extends State<PlayerSearchScreen> {
  TextEditingController _search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context,"Players"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            verticalSpace(),
            searchField(_search, "Search Player Name, ID"),
            verticalSpace(),
            Material(
              elevation: 10,
              borderRadius: BorderRadius.all(Radius.circular(15)),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PlayerInfoScreen()));
                },
                child: Container(
                  width: 372,
                  height: 125,
                  decoration: BoxDecoration(
                      color: HexColor("#FFFFFF"),
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 104,
                          width: 119,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: HexColor("#C4C4C4")),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Player Name",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text("Role: Batsman"),
                            verticalSpace(),
                            Row(
                              children: const [
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("12")
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            verticalSpace(),
            adContainer(context)
          ],
        ),
      ),
    );
  }
}
