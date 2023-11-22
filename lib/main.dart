import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Color.fromARGB(255, 33, 243, 96),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
