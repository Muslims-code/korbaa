import 'package:flutter/material.dart';
import 'package:korbaa/screens/screens.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "El Messiri",
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}




