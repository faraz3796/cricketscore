import 'package:country_code_picker/country_code_picker.dart';
import 'package:cricketscore/services/navigator_services.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../helpers.dart';

class OTPVerifyScreen extends StatefulWidget {
  OTPVerifyScreen({Key? key}) : super(key: key);

  @override
  State<OTPVerifyScreen> createState() => _OTPVerifyScreenState();
}

class _OTPVerifyScreenState extends State<OTPVerifyScreen> {
  TextEditingController _otp = TextEditingController();
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: PinCodeTextField(
                textStyle: TextStyle(color: Colors.black),
                appContext: context,
                // pastedTextStyle: TextStyle(
                //   color: Colors.green.shade600,
                //   fontWeight: FontWeight.bold,
                // ),
                length: 6,
                blinkWhenObscuring: true,

                validator: (v) {
                  if (v!.length < 5) {
                    return "Enter 6 digit OTP";
                  } else {
                    return null;
                  }
                },
                pinTheme: PinTheme(
                  errorBorderColor: Colors.red,
                  fieldHeight: 45,
                  fieldWidth: 40,
                  borderRadius: BorderRadius.circular(4),
                  shape: PinCodeFieldShape.box,
                ),
                useExternalAutoFillGroup: true,
                cursorColor: Colors.black,
                animationDuration: Duration(milliseconds: 300),
                enableActiveFill: true,
                // hintCharacter: "*",
                controller: _otp,
                keyboardType: TextInputType.number,
                onCompleted: (v) {
                  _otp.text = v;
                },
                // onTap: () {
                //   print("Pressed");
                // },
                onChanged: (value) {
                  print(value);
                },
                beforeTextPaste: (text) {
                  print("Allowing to paste $text");

                  return true;
                },
              ),
            ),
            verticalSpace(),
            colorButton(context, "Verify OTP", () {
              Navigate.navigate_to_homescreen(context);
            })
          ],
        ),
      )),
    );
  }
}
