import 'package:flutter/material.dart';

class VerifyPhoneScreen extends StatelessWidget {
  String phoneNumber;
  Color fontColor = const Color.fromARGB(255, 0, 166, 6);
  VerifyPhoneScreen({super.key, required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 60, bottom: 10),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Verifying your number",
              style: TextStyle(
                color: fontColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(fontSize: 15, color: Colors.black54),
                children: <TextSpan>[
                  TextSpan(
                    text:
                        "You have tried to register +91${phoneNumber} recently. Wait before requesting an sms or a call.\n with your code.",
                  ),
                  TextSpan(
                    text: "Wrong number?",
                    style: TextStyle(color: fontColor),
                  ),
                ],
              ),
            ),
            Expanded(child: SizedBox()),
          ],
        ),
      ),
    );
  }
}
