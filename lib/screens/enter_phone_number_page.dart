import 'package:flutter/material.dart';

class EnterPhoneNumberPage extends StatelessWidget {
  const EnterPhoneNumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.green,
        backgroundColor: Colors.white,
        title: Text(
          "Enter Your Phone Number",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
