import 'package:flutter/material.dart';
import 'package:leonels_iron/screens.dart/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Leonels Iron',
      initialRoute: 'home',
      routes: {
        'home': (_) => HomeScreen(),
      },
      home: HomeScreen(),
    );
  }
}
