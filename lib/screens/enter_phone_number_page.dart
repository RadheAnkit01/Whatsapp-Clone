import 'package:flutter/material.dart';

class EnterPhoneNumberPage extends StatefulWidget {
  EnterPhoneNumberPage({super.key});

  @override
  State<EnterPhoneNumberPage> createState() => _EnterPhoneNumberPageState();
}

class _EnterPhoneNumberPageState extends State<EnterPhoneNumberPage> {
  final Color _textColor = Color.fromARGB(255, 1, 169, 52);

  String selectedCountrie = "India";
  List<String> countries = [
    "Africa",
    "America",
    "Brazil",
    "Bangaladesh",
    "China",
    "India",
    "Nepal",
    "Pakistan",
    "Russia",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // appBar: AppBar(
      //   foregroundColor: Colors.green,
      //   backgroundColor: Colors.white,
      //   title: Text(
      //     "Enter Your Phone Number",
      //     style: TextStyle(fontWeight: FontWeight.bold),
      //   ),
      // ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Enter Your Phone Number",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: _textColor,
              ),
            ),
            Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(color: Colors.black54, fontSize: 17),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          "WhatsApp will need to verify your phone number. Carrier charges may apply.\n",
                    ),
                    TextSpan(
                      text: "What is my number?",
                      style: TextStyle(color: _textColor),
                    ),
                  ],
                ),
              ),
            ),
            DropdownButtonFormField(
              hint: Text('Select Country'),
              items: countries.map((String country) {
                return DropdownMenuItem(
                  child: Text(country.toString()),
                  value: country,
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedCountrie = value!;
                });
              },
            ),
            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                prefix: Text("+91 ", style: TextStyle(color: Colors.black)),
                hint: Text("Enter number here"),
              ),
            ),
            Expanded(child: SizedBox()),
            SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => (),
                  //   ),
                  // );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                ),
                child: Text("Next"),
              ),
            ),
            // const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
