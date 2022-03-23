import 'package:cricketscore/services/navigator_services.dart';
import 'package:cricketscore/ui/admin_panel.dart';
import 'package:cricketscore/ui/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: Image.asset("assets/3d.png"),
              ),
              verticalSpace(),
              const Text(
                "Login",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "roboto",
                    fontWeight: FontWeight.w700),
              ),
              verticalSpace(),
              textField("username", _username, false),
              const SizedBox(
                height: 20,
              ),
              textField("password", _password, true),
              verticalSpace(),
              logButton("Login", () {
                Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => AdminPanel(replace: "")),
  );
              }),
              verticalSpace(),
              verticalSpace(),
              verticalSpace(),
              logButton("Get Login Details", () {
                Navigate.navigate_to_type(context);
              })
            ],
          ),
        ),
      ),
    );
  }
}
