import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  String name;
  String phoneNumber;
  HomeScreen({super.key, required this.name, required this.phoneNumber});
  final Color fontColor = const Color.fromARGB(255, 0, 166, 6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WhatsApp Clone',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
    );
  }
}
