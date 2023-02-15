import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_fair_system/Screens/Society%20Member/generateschedule.dart';
import 'package:job_fair_system/Screens/Society%20Member/registercompany.dart';
import 'package:job_fair_system/Screens/login_screen.dart';
import 'package:job_fair_system/Screens/viewschedule.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.purple,
        focusColor: Colors.purple,
      ),
      home: RegisterCompany(),
      debugShowCheckedModeBanner: false,
    );
  }
}
