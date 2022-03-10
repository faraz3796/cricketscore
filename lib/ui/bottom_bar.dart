import 'package:cricketscore/ui/admin_panel.dart';
import 'package:cricketscore/ui/helpers.dart';
import 'package:cricketscore/ui/screens/home_design.dart';
import 'package:cricketscore/ui/screens/login.dart';
import 'package:cricketscore/ui/screens/news/news_view.dart';
import 'package:cricketscore/ui/screens/player/player_filter_search.dart';
import 'package:cricketscore/ui/screens/player/player_search.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  var _currentIndex = 0;
  List screens = [
    HomePageScreen(),
    NewsViewScreen(),
    LoginScreen(),
    PlayerFilterSearch()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: screens[_currentIndex],
        //appBar: appbar("Free Hit"),
        bottomNavigationBar: Container(
          color: Colors.black,
          child: SalomonBottomBar(
            currentIndex: _currentIndex,
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.green,
            onTap: (i) => setState(() => _currentIndex = i),
            items: [
              /// Home
              SalomonBottomBarItem(
                icon: Icon(Icons.home),
                title: Text("Home"),
                //selectedColor: Colors.purple,
              ),

              /// Likes
              SalomonBottomBarItem(
                icon: Icon(Icons.newspaper),
                title: Text("News"),
                //selectedColor: Colors.pink,
              ),

              /// Search
              SalomonBottomBarItem(
                icon: Icon(Icons.add),
                title: Text("New Match"),
                //selectedColor: Colors.orange,
              ),

              /// Profile
              SalomonBottomBarItem(
                icon: Icon(Icons.sports_cricket),
                title: Text("Players"),
                //selectedColor: Colors.teal,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
