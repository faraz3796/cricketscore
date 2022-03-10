import 'package:cricketscore/services/navigator_services.dart';
import 'package:flutter/material.dart';

import '../helpers.dart';

class PhoneNumberScreen extends StatefulWidget {
  PhoneNumberScreen({Key? key}) : super(key: key);

  @override
  State<PhoneNumberScreen> createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  TextEditingController _phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Image.asset("assets/3d.png"),
            ),
            verticalSpace(),
            const Text(
              "Enter your Phone Number to Login",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: "roboto",
                  fontWeight: FontWeight.w700),
            ),
            verticalSpace(),
            singupField(" Full Name"),
            singupField(" Username"),
            phoneField(context, _phone),
            singupField("Password"),
            verticalSpace(),
            colorButton(context, "Generate OTP", () {
              Navigate.navigate_to_verifyotp(context);
            }),
            verticalSpace(),
            verticalSpace(),
            verticalSpace()
          ],
        ),
      )),
    );
  }

  Padding singupField(String hint) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 4,
        child: TextField(
          keyboardType: TextInputType.phone,
          //controller: phone,
          cursorColor: Colors.black,
          decoration: InputDecoration(
              hintText: hint,
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
              border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black))),
        ),
      ),
    );
  }
}
