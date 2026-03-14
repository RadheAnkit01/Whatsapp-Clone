import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  String name;
  String phoneNumber;
  HomeScreen({super.key, required this.name, required this.phoneNumber});
  final Color fontColor = const Color.fromARGB(255, 0, 166, 6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          FaIcon(FontAwesomeIcons.qrcode),
          const SizedBox(width: 25),
          FaIcon(FontAwesomeIcons.ellipsisVertical),
          const SizedBox(width: 25),
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 15,
            child: FaIcon(
              FontAwesomeIcons.circleUser,
              size: 30,
              color: Colors.black54,
            ),
          ),
          const SizedBox(width: 10),
        ],
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.green,
            child: Padding(
              padding: EdgeInsetsGeometry.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hint: Row(
                      children: [
                        SizedBox(width: 10),
                        Icon(Icons.search, color: Colors.black54),
                        const SizedBox(width: 15),
                        Text('Ask Meta AI or Search'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.black12,
                  padding: EdgeInsets.symmetric(vertical: 5),
                  margin: EdgeInsets.only(bottom: 10),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.black38,
                      radius: 30,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
