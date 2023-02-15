import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ViewSchedule extends StatefulWidget {
  const ViewSchedule({Key? key}) : super(key: key);

  @override
  State<ViewSchedule> createState() => _ViewScheduleState();
}

class _ViewScheduleState extends State<ViewSchedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Schedule"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Table(
            border: TableBorder.all(
                color: Colors.black, style: BorderStyle.solid, width: 2),
            children: [
              TableRow(children: [
                Column(children: [
                  Text('Student Name', style: TextStyle(fontSize: 15.0))
                ]),
                Column(children: [
                  Text('Company Name', style: TextStyle(fontSize: 15.0))
                ]),
                Column(
                    children: [Text('Time', style: TextStyle(fontSize: 15.0))]),
                Column(children: [
                  Text('Room Name', style: TextStyle(fontSize: 15.0))
                ]),
              ]),
              TableRow(children: [
                Column(children: [Text('', style: TextStyle(fontSize: 20.0))]),
                Column(children: [Text('', style: TextStyle(fontSize: 20.0))]),
                Column(children: [Text('', style: TextStyle(fontSize: 20.0))]),
                Column(children: [Text('', style: TextStyle(fontSize: 20.0))]),
              ]),
              TableRow(children: [
                Column(children: [Text('', style: TextStyle(fontSize: 20.0))]),
                Column(children: [Text('', style: TextStyle(fontSize: 20.0))]),
                Column(children: [Text('', style: TextStyle(fontSize: 20.0))]),
                Column(children: [Text('', style: TextStyle(fontSize: 20.0))]),
              ]),
              TableRow(children: [
                Column(children: [Text('', style: TextStyle(fontSize: 20.0))]),
                Column(children: [Text('', style: TextStyle(fontSize: 20.0))]),
                Column(children: [Text('', style: TextStyle(fontSize: 20.0))]),
                Column(children: [Text('', style: TextStyle(fontSize: 20.0))]),
              ]),
              TableRow(children: [
                Column(children: [Text('', style: TextStyle(fontSize: 20.0))]),
                Column(children: [Text('', style: TextStyle(fontSize: 20.0))]),
                Column(children: [Text('', style: TextStyle(fontSize: 20.0))]),
                Column(children: [Text('', style: TextStyle(fontSize: 20.0))]),
              ]),
            ],
          )
        ],
      ),
    );
  }
}
