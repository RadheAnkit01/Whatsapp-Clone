import 'package:amicons/amicons.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp_clone/screens/calls_page.dart';
import 'package:whatsapp_clone/screens/chats_page.dart';
import 'package:whatsapp_clone/screens/status_page.dart';

class HomeScreen extends StatefulWidget {
  String name;
  String phoneNumber;

  HomeScreen({super.key, required this.name, required this.phoneNumber});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final Color fontColor = const Color.fromARGB(255, 0, 166, 6);
  final pages = [ChatsPage(), StatusPage(), CallsPage()];
  final title = ["WhatsApp", "Updated", "Calls"];
  // final titleText = [ChatsPageTitle(), StatusPageTitle(), CallsPageTitle()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0, // normal elevation
        scrolledUnderElevation: 0, // when scrolling
        surfaceTintColor: Colors.transparent, // disables material tint
        title: Text(
          title[currentIndex],
          style: TextStyle(
            fontWeight: FontWeight.bold,

            color: Colors.green,
            fontSize: 26,
          ),
        ),
        actions: [
          if (currentIndex == 0) FaIcon(FontAwesomeIcons.qrcode),
          if (currentIndex == 1 || currentIndex == 2)
            Icon(Icons.search, size: 30),

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
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: currentIndex,
        iconSize: 25,

        selectedFontSize: 15,
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
          BottomNavigationBarItem(
            icon: Icon(Amicons.vuesax_status, fontWeight: FontWeight.bold),
            label: "Updates",
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.groups),
          //   label: "Communities",
          // ),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
        ],
      ),
      floatingActionButton: currentIndex == 0
          ? FloatingActionButton(
              backgroundColor: Colors.green,
              onPressed: () {},
              child: Icon(
                semanticLabel: "Add Chat",
                Icons.chat,
                size: 25,
                color: Colors.white,
              ),
            )
          : currentIndex == 1
          ? FloatingActionButton(
              backgroundColor: Colors.green,
              onPressed: () {},
              child: Icon(Icons.camera_alt, size: 25, color: Colors.white),
            )
          : FloatingActionButton(
              backgroundColor: Colors.green,
              onPressed: () {},
              child: Icon(Icons.add_call, size: 25, color: Colors.white),
            ),
    );
  }
}
