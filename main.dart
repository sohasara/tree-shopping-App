import 'package:flutter/material.dart';
import 'package:flutter_application_1/navigation_bar.dart';
//import 'package:flutter_application_1/detailes_pic.dart';

//import 'package:flutter_application_1/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      // home: const Splash(),
      //home: const Display(),
      home: const BottomBar(),
    );
  }
}
