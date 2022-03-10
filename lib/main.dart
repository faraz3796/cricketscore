import 'package:cricketscore/ui/screens/login.dart';
import 'package:cricketscore/ui/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: "roboto"),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}
