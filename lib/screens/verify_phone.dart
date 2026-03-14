import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/profile_info_screen.dart';

class VerifyPhoneScreen extends StatelessWidget {
  String phoneNumber;
  final Color fontColor = const Color.fromARGB(255, 0, 166, 6);
  VerifyPhoneScreen({super.key, required this.phoneNumber});
  TextEditingController textController1 = TextEditingController();
  TextEditingController textController2 = TextEditingController();
  TextEditingController textController3 = TextEditingController();
  TextEditingController textController4 = TextEditingController();
  TextEditingController textController5 = TextEditingController();
  TextEditingController textController6 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 60, bottom: 50),
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
                        "You have tried to register +91$phoneNumber recently. Wait before requesting an sms or a call.\n with your code. ",
                  ),
                  TextSpan(
                    text: "Wrong number ?",
                    style: TextStyle(color: fontColor, fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customContainer(textController1),
                customContainer(textController2),
                customContainer(textController3),
                customContainer(textController4),
                customContainer(textController5),
                customContainer(textController6),
              ],
            ),
            const SizedBox(height: 40),
            Text(
              "Didn't receive code?",
              style: TextStyle(color: fontColor, fontSize: 18),
            ),

            Expanded(child: SizedBox()),
            SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  verifyOtp(
                    context,
                    textController1.text.toString(),
                    textController2.text.toString(),
                    textController3.text.toString(),
                    textController4.text.toString(),
                    textController5.text.toString(),
                    textController6.text.toString(),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                ),
                child: Text("Next"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  verifyOtp(
    BuildContext context,
    String textController1,
    String textController2,
    String textController3,
    String textController4,
    String textController5,
    String textController6,
  ) {
    if (textController1 == "" ||
        textController2 == "" ||
        textController3 == "" ||
        textController4 == "" ||
        textController5 == "" ||
        textController6 == "") {
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.red,
          content: Text("Enter OTP to continue ot next."),
        ),
      );
    } else {
      clearAllController();
      return {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ProfileInfoScreen(phoneNumber: phoneNumber),
          ),
        ),
      };
    }
  }

  clearAllController() {
    textController1.clear();
    textController2.clear();
    textController3.clear();
    textController4.clear();
    textController5.clear();
    textController6.clear();
  }

  static customContainer(TextEditingController textController) {
    return Container(
      padding: EdgeInsets.all(3),
      margin: EdgeInsets.all(5),
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusGeometry.all(Radius.circular(10)),
        color: Colors.grey,
      ),
      child: TextField(
        // maxLength: 1,
        cursorHeight: 35,
        style: TextStyle(fontSize: 35),
        controller: textController,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(border: InputBorder.none),
      ),
    );
  }
}
