import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:leonels_iron/Widgets/Add_Corte.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cortes",
          style: TextStyle(color: Colors.white),
        ),
        toolbarHeight: 75,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [Add_Corte()],
      ),
    );
  }
}
