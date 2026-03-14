import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp_clone/screens/home_screen.dart';

class ProfileInfoScreen extends StatelessWidget {
  String phoneNumber;
  ProfileInfoScreen({super.key, required this.phoneNumber});
  final Color fontColor = const Color.fromARGB(255, 0, 166, 6);
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 50),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Profile Info',
              style: TextStyle(
                fontSize: 20,
                color: fontColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            Text(
              "Please provide your name and an optional profile photo",
              style: TextStyle(fontSize: 17, color: Colors.black54),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 70,
              child: FaIcon(
                FontAwesomeIcons.camera,
                color: Colors.black54,
                size: 50,
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300,
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 30),
                      hint: Text('Type your name here'),
                    ),
                  ),
                ),
                FaIcon(
                  FontAwesomeIcons.faceSmile,
                  color: Colors.black54,
                  size: 30,
                ),
              ],
            ),
            Expanded(child: SizedBox()),
            SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(
                        name: nameController.text.toString(),
                        phoneNumber: phoneNumber,
                      ),
                    ),
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
}
