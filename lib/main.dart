import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Color(0XFF008069))),
      home: const SplashScreen(),
    );
  }
}
