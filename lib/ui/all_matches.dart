import 'package:cricketscore/ui/helpers.dart';
import 'package:flutter/material.dart';

class AllMatches extends StatefulWidget {
  AllMatches({Key? key}) : super(key: key);

  @override
  State<AllMatches> createState() => _AllMatchesState();
}

class _AllMatchesState extends State<AllMatches> {
  TextEditingController _search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context,"All Matches"),
      body: Container(
        alignment: Alignment.topCenter,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              searchField(_search, "Search Tournament, Match Name"),
              verticalSpace(),
              matchContainer(context, "Team 1", "Team 2", "Trophy"),
              const SizedBox(
                height: 10,
              ),
              adContainer(context),
              matchContainer(context, "Team 1", "Team 2", "Trophy"),
              const SizedBox(
                height: 10,
              ),
              adContainer(context)
            ],
          ),
        ),
      ),
    );
  }
}
