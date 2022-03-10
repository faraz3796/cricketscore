import 'package:cricketscore/ui/admin_panel.dart';
import 'package:cricketscore/ui/all_matches.dart';
import 'package:cricketscore/ui/get_login.dart';
import 'package:cricketscore/ui/match_type.dart';
import 'package:cricketscore/ui/score/score_board.dart';
import 'package:cricketscore/ui/screens/home_design.dart';
import 'package:cricketscore/ui/screens/news/details_news.dart';
import 'package:cricketscore/ui/screens/news/news_view.dart';
import 'package:cricketscore/ui/screens/otp_verify.dart';
import 'package:cricketscore/ui/screens/phone_numbers.dart';
import 'package:cricketscore/ui/screens/player/player_filter_search.dart';
import 'package:cricketscore/ui/screens/player/player_search.dart';
import 'package:cricketscore/ui/screens/player/registerplayer.dart';
import 'package:cricketscore/ui/screens/tournament.dart';
import 'package:cricketscore/ui/screens/youtube_embedded.dart';
import 'package:flutter/material.dart';

class Navigate {
  static navigate_to_phonenumber(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => PhoneNumberScreen()));
  }

  static navigate_to_verifyotp(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => OTPVerifyScreen()));
  }

  static navigate_to_homescreen(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomePageScreen()));
  }

  static navigate_to_newsscreen(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => NewsViewScreen()));
  }

  static navigate_to_newsdetails(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => NewsDetails()));
  }

  static navigate_to_playerscreen(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => PlayerFilterSearch()));
  }

  static navigate_to_addplayer(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => RegisterPlayer()));
  }

  static navigate_to_playerlist(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => PlayerSearchScreen()));
  }

  static navigate_to_tournament(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TournamentScreen()));
  }

  static navigate_to_youtube(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => YoutubeScreen()));
  }

  static navigate_to_score(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ScoreBorad()));
  }

  static navigate_to_allmatches(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => AllMatches()));
  }

  static navigate_to_getlogin(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => GetLogin()));
  }

  static navigate_to_admin(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => AdminPanel()));
  }
  static navigate_to_type(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MatchType()));
  }
}
