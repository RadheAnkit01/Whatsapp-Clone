import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CallsPage extends StatelessWidget {
  CallsPage({super.key});
  Color iconsBgColor = const Color.fromARGB(31, 168, 168, 168);
  Color iconsColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          height: 110,
          // color: Colors.amberAccent,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(width: 10),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundColor: iconsBgColor,
                      radius: 35,
                      child: Icon(
                        Icons.call_outlined,
                        size: 30,
                        color: iconsColor,
                      ),
                    ),
                    Text('Call'),
                  ],
                ),

                const SizedBox(width: 10),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: iconsBgColor,
                      radius: 35,
                      child: Icon(
                        Icons.calendar_month_outlined,
                        size: 30,
                        color: iconsColor,
                      ),
                    ),
                    Text('Schedule'),
                  ],
                ),
                const SizedBox(width: 10),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: iconsBgColor,
                      radius: 35,
                      child: FaIcon(
                        FontAwesomeIcons.keyboard,
                        size: 30,
                        color: iconsColor,
                      ),
                    ),
                    Text('Keypad'),
                  ],
                ),
                const SizedBox(width: 10),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: iconsBgColor,
                      radius: 35,
                      child: Icon(Icons.person_3, size: 35, color: iconsColor),
                    ),
                    Text('Person 1'),
                  ],
                ),
                const SizedBox(width: 10),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: iconsBgColor,
                      radius: 35,
                      child: Icon(Icons.person, size: 35, color: iconsColor),
                    ),
                    Text('Person 3'),
                  ],
                ),
                const SizedBox(width: 10),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: iconsBgColor,

                      radius: 35,
                      child: FaIcon(
                        FontAwesomeIcons.heart,
                        size: 30,
                        color: iconsColor,
                      ),
                    ),
                    Text('Favourites'),
                  ],
                ),
                const SizedBox(width: 10),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            'Recent',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        ...List.generate(
          20,
          (index) => Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                child: Icon(Icons.person, size: 35),
              ),
              title: Text(
                'Person ${index + 1}',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  if (index % 5 == 0)
                    Icon(Icons.call_missed, color: Colors.red)
                  else if (index % 2 == 0)
                    Icon(Icons.call_made, color: Colors.green)
                  else
                    Icon(Icons.call_received, color: Colors.green),
                  Text('Yesterday, 10:${60 - index * 2}'),
                ],
              ),
              trailing: (index % 3 == 0)
                  ? FaIcon(FontAwesomeIcons.video, size: 30)
                  : Icon(Icons.call_outlined, size: 30),
            ),
          ),
        ),
      ],
    );
  }
}
