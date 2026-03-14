import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(vertical: 5, horizontal: 10),
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
                color: Colors.white,
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
    );
  }
}
