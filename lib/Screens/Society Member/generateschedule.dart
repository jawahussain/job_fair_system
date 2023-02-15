import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GenerateSchedule extends StatefulWidget {
  const GenerateSchedule({super.key});

  @override
  State<GenerateSchedule> createState() => _GenerateScheduleState();
}

List<String> techlist = <String>[
  'Choose Technology',
  'Flutter',
  '.Net',
  'Andorid'
];
List<String> roomlist = <String>[
  'Select Room',
  'LT-1',
  'LT-2',
  'LT-3',
  'LT-4',
  'LT-5',
  'LT-6'
];

class _GenerateScheduleState extends State<GenerateSchedule> {
  String techdropdownval = techlist.first;
  String comdropdownval = roomlist.first;
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Make Schedule"),
          centerTitle: true,
          toolbarHeight: 60.2,
          toolbarOpacity: 0.8,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25)),
          ),
          elevation: 0.00,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.white, Colors.white])),
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 10),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        width: 250,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white, //<-- SEE HERE
                        ),
                        child: DropdownButton<String>(
                          icon: const Icon(Icons.arrow_downward),
                          isExpanded: true,
                          elevation: 14,
                          dropdownColor: Colors.white,
                          value: techdropdownval,
                          onChanged: (String? newValue) {
                            setState(() {
                              techdropdownval = newValue!;
                            });
                          },
                          items: techlist
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ),
                            );
                          }).toList(),
                        ),
                      )
                    ],
                  )),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Card(
                      child: Text(
                    "Company 1",
                    style: TextStyle(fontSize: 15),
                  )),
                  SizedBox(
                    width: 5,
                  ),
                  Card(
                      child: Text(
                    "Company 2",
                    style: TextStyle(fontSize: 15),
                  )),
                  SizedBox(
                    width: 5,
                  ),
                  Card(
                      child: Text(
                    "Company 3",
                    style: TextStyle(fontSize: 15),
                  )),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Card(
                      child: Text(
                    "Company 1",
                    style: TextStyle(fontSize: 15),
                  )),
                  SizedBox(
                    width: 5,
                  ),
                  Card(
                      child: Text(
                    "Company 2",
                    style: TextStyle(fontSize: 15),
                  )),
                  SizedBox(
                    width: 5,
                  ),
                  Card(
                      child: Text(
                    "Company 3",
                    style: TextStyle(fontSize: 15),
                  )),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Card(
                      child: Text(
                    "Company 1",
                    style: TextStyle(fontSize: 15),
                  )),
                  SizedBox(
                    width: 5,
                  ),
                  Card(
                      child: Text(
                    "Company 2",
                    style: TextStyle(fontSize: 15),
                  )),
                  SizedBox(
                    width: 5,
                  ),
                  Card(
                      child: Text(
                    "Company 3",
                    style: TextStyle(fontSize: 15),
                  )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 10),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        width: 250,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white, //<-- SEE HERE
                        ),
                        child: DropdownButton<String>(
                          icon: const Icon(Icons.arrow_downward),
                          isExpanded: true,
                          elevation: 14,
                          dropdownColor: Colors.white,
                          value: comdropdownval,
                          onChanged: (String? newValue) {
                            setState(() {
                              comdropdownval = newValue!;
                            });
                          },
                          items: roomlist
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ),
                            );
                          }).toList(),
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 250,
              ),
              Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 100, vertical: 15),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: (() {}),
                    child: Text("Gererate Schedule")),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
