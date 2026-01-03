import 'package:flutter/material.dart';
import 'authentication_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthenticationScreen(),
      debugShowCheckedModeBanner: false, // Set this to false to hide the debug banner
    );
  }
}