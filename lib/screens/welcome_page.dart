import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/enter_phone_number_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: SizedBox()),
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/image1.png"),
              radius: 150,
            ),
          ),

          SizedBox(height: 50),
          Text('Welcome to WhatsApp', style: TextStyle(fontSize: 25)),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(color: Colors.black54, fontSize: 16),
                children: <TextSpan>[
                  TextSpan(text: "Read out "),
                  TextSpan(
                    text: "Privacy Policy.",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 21, 74, 251),
                    ),
                  ),
                  TextSpan(text: "Tap “Agree and continue” to accept the "),
                  TextSpan(
                    text: "Terms and Services.",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 21, 74, 251),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: SizedBox()),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EnterPhoneNumberPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                ),
                child: Text("Agree and continue"),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
