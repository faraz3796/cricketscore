import 'package:cricketscore/ui/helpers.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class NewsViewScreen extends StatefulWidget {
  NewsViewScreen({Key? key}) : super(key: key);

  @override
  State<NewsViewScreen> createState() => _NewsViewScreenState();
}

class _NewsViewScreenState extends State<NewsViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News"),
        //automaticallyImplyLeading: false,
        backgroundColor: HexColor("#6685FF"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              newsFeed(context),
              newsFeed(context),
              newsFeed(context),
              newsFeed(context),
              newsFeed(context),
              newsFeed(context),
              newsFeed(context),
            ],
          ),
        ),
      ),
    );
  }
}
