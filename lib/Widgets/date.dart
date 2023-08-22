import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:leonels_iron/controllers/objectVariables.dart';
import 'package:datepicker_dropdown/datepicker_dropdown.dart';

class cantidad extends StatefulWidget {
  const cantidad({super.key});

  @override
  State<cantidad> createState() => _cantidadState();
}

class _cantidadState extends State<cantidad> {
  bool redUnderline = true;
  TextEditingController Cantidad = new TextEditingController();
  TextEditingController Responsable = new TextEditingController();
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
            // ----------------- Cantidad ------------------- //
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding:
                    EdgeInsets.only(top: 15, bottom: 15, left: 100, right: 100),
                child: Text('Cantidad',
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
                      controller: Cantidad,
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

                        int value = int.parse(Cantidad.text);
                        currentUser.Cantidad = value;
                      },
                      onTap: () {},
                    ),
                  ),
                )),

            // ----------------- Fecha ------------------- //
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding:
                    EdgeInsets.only(top: 15, bottom: 15, left: 100, right: 100),
                child: Text('Fecha',
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
                  padding: EdgeInsets.only(left: 30, right: 30, bottom: 15),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: DropdownDatePicker(
                        inputDecoration: InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.0),
                            ),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(10))), // optional
                        isDropdownHideUnderline: true, // optional
                        isFormValidator: true, // optional
                        startYear: 2020, // optional
                        endYear: 2023, // optional
                        width: 10, // optional
                        // selectedDay: 14, // optional
                        //selectedMonth: 10, // optional
                        //selectedYear: 1993, // optional
                        onChangedDay: (day) {
                          currentUser.day = day;
                          print('onChangedDay: $day');
                        },
                        onChangedMonth: (month) {
                          currentUser.month = month;
                          print('onChangedMonth: $month');
                        },
                        onChangedYear: (year) {
                          currentUser.year = year;
                          print('onChangedYear: $year');
                        }
                        //boxDecoration: BoxDecoration(
                        // border: Border.all(color: Colors.grey, width: 1.0)), // optional
                        // showDay: false,// optional
                        // dayFlex: 2,// optional
                        // locale: "zh_CN",// optional
                        // hintDay: 'Day', // optional
                        // hintMonth: 'Month', // optional
                        // hintYear: 'Year', // optional
                        // hintTextStyle: TextStyle(color: Colors.grey), // optional
                        ),
                  ),
                )),
            // ----------------- Responsable ------------------- //
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding:
                    EdgeInsets.only(top: 15, bottom: 15, left: 100, right: 100),
                child: Text('Responsable',
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
                      controller: Responsable,
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
                        currentUser.responsable = value;
                      },
                      onTap: () {},
                    ),
                  ),
                )),
          ],
        ));
  }
}
