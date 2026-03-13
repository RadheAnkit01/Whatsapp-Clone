import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/verify_phone.dart';

class EnterPhoneNumberPage extends StatefulWidget {
  const EnterPhoneNumberPage({super.key});

  @override
  State<EnterPhoneNumberPage> createState() => _EnterPhoneNumberPageState();
}

class _EnterPhoneNumberPageState extends State<EnterPhoneNumberPage> {
  final Color _textColor = Color.fromARGB(255, 1, 169, 52);
  TextEditingController phoneController = TextEditingController();
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
            const SizedBox(height: 60),
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
                  value: country,
                  child: Text(country.toString()),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedCountrie = value!;
                });
              },
            ),
            Row(
              children: [
                SizedBox(
                  width: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      hint: Text(' +91', style: TextStyle(fontSize: 18)),
                    ),
                  ),
                ),
                Expanded(
                  // width: 200,
                  child: TextField(
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hint: Text("Enter number here"),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(child: SizedBox()),
            SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  login(phoneController.text.toString());
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

  login(String phoneNumber) {
    if (phoneNumber.length != 10) {
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          showCloseIcon: true,
          behavior: SnackBarBehavior.floating,
          content: Text('Enter Valid Phone Number'),
        ),
      );
    } else {
      return Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => VerifyPhoneScreen(phoneNumber: phoneNumber),
        ),
      );
    }
  }
}
