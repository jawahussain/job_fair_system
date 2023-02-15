import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_fair_system/Screens/Admin/registerscreen.dart';

class ShortListStudent extends StatefulWidget {
  const ShortListStudent({super.key});

  @override
  State<ShortListStudent> createState() => _ShortListStudentState();
}

class _ShortListStudentState extends State<ShortListStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (() {
        Get.to(RegisterScreen());
      })),
      appBar: AppBar(title: Text("Shortlist Student")),
      body: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(right: 30),
              child: Text(
                "Student Information",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Table(
            border: TableBorder.all(color: Colors.black, width: 1.5),
            columnWidths: const {
              0: FlexColumnWidth(1.5),
              1: FlexColumnWidth(4),
              2: FlexColumnWidth(2),
            },
            children: const [
              TableRow(children: [
                Text(
                  "Arid No",
                  style: TextStyle(fontSize: 15.0),
                ),
                Text(
                  "Student Name",
                  style: TextStyle(fontSize: 15.0),
                ),
                Text(
                  "Skills",
                  style: TextStyle(fontSize: 15.0),
                ),
                Text("CV", style: TextStyle(fontSize: 15.0))
              ]),
              TableRow(children: [
                Text(
                  "",
                  style: TextStyle(fontSize: 15.0),
                ),
                Text(
                  "",
                  style: TextStyle(fontSize: 15.0),
                ),
                Text(
                  "",
                  style: TextStyle(fontSize: 15.0),
                ),
                Text("", style: TextStyle(fontSize: 15.0))
              ]),
              TableRow(children: [
                Text(
                  "",
                  style: TextStyle(fontSize: 15.0),
                ),
                Text(
                  "",
                  style: TextStyle(fontSize: 15.0),
                ),
                Text(
                  "",
                  style: TextStyle(fontSize: 15.0),
                ),
                Text("", style: TextStyle(fontSize: 15.0))
              ]),
              TableRow(children: [
                Text(
                  "",
                  style: TextStyle(fontSize: 15.0),
                ),
                Text(
                  "",
                  style: TextStyle(fontSize: 15.0),
                ),
                Text(
                  "",
                  style: TextStyle(fontSize: 15.0),
                ),
                Text("", style: TextStyle(fontSize: 15.0))
              ]),
              TableRow(children: [
                Text(
                  "",
                  style: TextStyle(fontSize: 15.0),
                ),
                Text(
                  "",
                  style: TextStyle(fontSize: 15.0),
                ),
                Text(
                  "",
                  style: TextStyle(fontSize: 15.0),
                ),
                Text("", style: TextStyle(fontSize: 15.0))
              ]),
              TableRow(children: [
                Text(
                  "",
                  style: TextStyle(fontSize: 15.0),
                ),
                Text(
                  "",
                  style: TextStyle(fontSize: 15.0),
                ),
                Text(
                  "",
                  style: TextStyle(fontSize: 15.0),
                ),
                Text("", style: TextStyle(fontSize: 15.0))
              ]),
            ],
          ),
        ],
      ),
    );
  }
}
