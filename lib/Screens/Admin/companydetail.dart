import 'package:flutter/material.dart';

class CompanyDetail extends StatelessWidget {
  const CompanyDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Company Details")),
      body: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(right: 30),
              child: Text(
                "Company Information",
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
                  "Name",
                  style: TextStyle(fontSize: 15.0),
                ),
                Text(
                  "Email",
                  style: TextStyle(fontSize: 15.0),
                ),
                Text(
                  "Address",
                  style: TextStyle(fontSize: 15.0),
                ),
              ]),
              TableRow(children: [
                Text(
                  "1",
                  style: TextStyle(fontSize: 15.0),
                ),
                Text(
                  "Mohit",
                  style: TextStyle(fontSize: 15.0),
                ),
                Text(
                  "25",
                  style: TextStyle(fontSize: 15.0),
                ),
              ]),
              TableRow(children: [
                Text(
                  "2",
                  style: TextStyle(fontSize: 15.0),
                ),
                Text(
                  "Ankit",
                  style: TextStyle(fontSize: 15.0),
                ),
                Text(
                  "27",
                  style: TextStyle(fontSize: 15.0),
                ),
              ]),
              TableRow(children: [
                Text(
                  "3",
                  style: TextStyle(fontSize: 15.0),
                ),
                Text(
                  "Rakhi",
                  style: TextStyle(fontSize: 15.0),
                ),
                Text(
                  "26",
                  style: TextStyle(fontSize: 15.0),
                ),
              ]),
              TableRow(children: [
                Text(
                  "4",
                  style: TextStyle(fontSize: 15.0),
                ),
                Text(
                  "Yash",
                  style: TextStyle(fontSize: 15.0),
                ),
                Text(
                  "29",
                  style: TextStyle(fontSize: 15.0),
                ),
              ]),
              TableRow(children: [
                Text(
                  "5",
                  style: TextStyle(fontSize: 15.0),
                ),
                Text(
                  "Pragati",
                  style: TextStyle(fontSize: 15.0),
                ),
                Text(
                  "28",
                  style: TextStyle(fontSize: 15.0),
                ),
              ]),
            ],
          ),
        ],
      ),
    );
  }
}
