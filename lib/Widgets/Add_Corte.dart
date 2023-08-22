import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:leonels_iron/Widgets/Corte.dart';

class Add_Corte extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
          top: 100,
        ),
        alignment: Alignment.center,
        child: Column(
          children: [
            Center(
              child: Text(
                "Agregar nuevo corte \n",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
            Center(
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Corte()));
                },
                backgroundColor: Color.fromARGB(255, 128, 169, 240),
                child: const Icon(Icons.add),
              ),
            )
          ],
        ));
  }
}
