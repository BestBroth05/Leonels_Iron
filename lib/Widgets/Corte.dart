import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:leonels_iron/Widgets/date.dart';
import 'package:leonels_iron/controllers/objectVariables.dart';

class Corte extends StatefulWidget {
  const Corte({super.key});

  @override
  State<Corte> createState() => _CorteState();
}

class _CorteState extends State<Corte> {
  bool redUnderline = true;
  TextEditingController corte = new TextEditingController();
  TextEditingController PTrabajo = new TextEditingController();
  TextEditingController estilo = new TextEditingController();
  TextEditingController Cantidad = new TextEditingController();
  String? cerrado;
  List<String> list = <String>['Si', 'No'];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Nuevo Corte",
            style: TextStyle(color: Colors.white),
          ),
          toolbarHeight: 75,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            // ----------------- No. Corte ------------------- //
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding:
                    EdgeInsets.only(top: 15, bottom: 15, left: 100, right: 100),
                child: Text('No. Corte',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 100, right: 100),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: corte,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide:
                              const BorderSide(color: Colors.blueAccent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide:
                              const BorderSide(color: Colors.blueAccent),
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {});

                        int value = int.parse(corte.text);
                        currentUser.corte = value;
                      },
                      onTap: () {},
                    ),
                  ),
                )),

            // ----------------- Plan de Trabajo ------------------- //
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding:
                    EdgeInsets.only(top: 15, bottom: 15, left: 100, right: 100),
                child: Text('Plan de Trabajo',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 100, right: 100),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: PTrabajo,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide:
                              const BorderSide(color: Colors.blueAccent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide:
                              const BorderSide(color: Colors.blueAccent),
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {});

                        int value = int.parse(PTrabajo.text);
                        currentUser.PTrabajo = value;
                      },
                      onTap: () {},
                    ),
                  ),
                )),

            // ----------------- Estilo ------------------- //
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding:
                    EdgeInsets.only(top: 15, bottom: 15, left: 100, right: 100),
                child: Text('Estilo',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 100, right: 100, bottom: 15),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: estilo,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide:
                              const BorderSide(color: Colors.blueAccent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide:
                              const BorderSide(color: Colors.blueAccent),
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {});

                        int value = int.parse(estilo.text);
                        currentUser.estilo = value;
                      },
                      onTap: () {},
                    ),
                  ),
                )),
// ----------------- Cantidad ------------------- //
            Center(
              child: Text(
                "Agregar Nueva Cantidad \n",
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Center(
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => cantidad()));
                },
                backgroundColor: Color.fromARGB(255, 128, 169, 240),
                child: const Icon(Icons.add),
              ),
            ),

            //------------------------Dropdown Infusion Type-------------------
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding:
                    EdgeInsets.only(top: 15, bottom: 15, left: 100, right: 100),
                child: Text("Corte Cerrado",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 100, right: 100),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: DropdownButtonFormField<String>(
                      value: cerrado,
                      onChanged: (cerrado) {
                        currentUser.cerrado = cerrado;
                        setState(() {});
                      },
                      decoration: InputDecoration(border: OutlineInputBorder()),
                      isExpanded: true,
                      hint: Text("--Select Option--"),
                      items: list.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onTap: () {},
                    ),
                  ),
                )),
          ],
        ));
  }
}
