import 'package:flutter/material.dart';
import 'package:job_fair_system/Screens/Society%20Member/generateschedule.dart';
import 'package:job_fair_system/Screens/Society%20Member/registercompany.dart';

class SMDashboard extends StatelessWidget {
  const SMDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          title: Text("Dashboard"),
          centerTitle: true,
        ),
      ),
      body: Center(
        child: Column(children: [
          ElevatedButton(
              onPressed: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterCompany()),
                );
              }),
              child: Text("Registry Company")),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GenerateSchedule()),
                );
              }),
              child: Text("Make Schedule")),
        ]),
      ),
    );
  }
}
