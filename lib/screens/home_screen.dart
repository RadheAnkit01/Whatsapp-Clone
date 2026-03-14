import 'package:amicons/amicons.dart';
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0, // normal elevation
        scrolledUnderElevation: 0, // when scrolling
        surfaceTintColor: Colors.transparent, // disables material tint
        title: Text(
          'WhatsApp',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.green,
            fontSize: 26,
          ),
        ),
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
              color: Colors.black,
            ),
          ),
          const SizedBox(width: 10),
        ],
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Container(
            height: 60,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsetsGeometry.symmetric(
                vertical: 5,
                horizontal: 10,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.circular(40),
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
          // SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.black12,
                  padding: EdgeInsets.symmetric(vertical: 2),
                  margin: EdgeInsets.only(top: 5),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      child: FaIcon(
                        FontAwesomeIcons.solidCircleUser,
                        size: 55,
                        color: Colors.blueGrey,
                      ),
                    ),
                    title: Text(
                      'Users ${index + 1}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('last message'),
                    trailing: Column(
                      children: [
                        Text('12:10 PM', style: TextStyle(fontSize: 13)),
                        SizedBox(height: 10),
                        if (index % 5 == 0)
                          FaIcon(FontAwesomeIcons.bellSlash, size: 20),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
          BottomNavigationBarItem(
            icon: Icon(Amicons.vuesax_status, fontWeight: FontWeight.bold),
            label: "Status",
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.groups),
          //   label: "Communities",
          // ),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
        ],
      ),
    );
  }
}
