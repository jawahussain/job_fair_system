import 'dart:convert';

import 'package:flutter/material.dart';
import '../Model/usermodel.dart';
import 'Admin/admindashboard.dart';
import 'Society Member/societymemberdashboard.dart';
import 'Student/studentdashboard.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPasswordVisible = false;
  TextEditingController emailcont = TextEditingController();
  TextEditingController passwordcont = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.purple.shade200, Colors.purple.shade900])),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 120,
                  width: 210,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.purple.shade200,
                        Colors.purple.shade900
                      ]),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 4,
                            spreadRadius: 3,
                            color: Colors.black12)
                      ],
                      borderRadius: BorderRadius.circular(200).copyWith(
                          bottomRight: Radius.circular(0),
                          topLeft: Radius.circular(0))),
                  child: Container(
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.purple.shade200,
                          Colors.purple.shade900
                        ]),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 4,
                              spreadRadius: 3,
                              color: Colors.black12)
                        ],
                        borderRadius: BorderRadius.circular(50).copyWith(
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(0))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Log',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              shadows: [
                                Shadow(
                                    color: Colors.black45,
                                    offset: Offset(1, 1),
                                    blurRadius: 5)
                              ]),
                        ),
                        Text(
                          'in',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.purple.shade600,
                              shadows: [
                                Shadow(
                                    color: Colors.black45,
                                    offset: Offset(1, 1),
                                    blurRadius: 5)
                              ]),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  height: 250,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.purple.shade200,
                        Colors.purple.shade900
                      ]),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 4,
                            spreadRadius: 3,
                            color: Colors.black12)
                      ],
                      borderRadius: BorderRadius.circular(100).copyWith(
                          bottomRight: Radius.circular(0),
                          topLeft: Radius.circular(0))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30)
                            .copyWith(bottom: 10),
                        child: TextField(
                          controller: emailcont,
                          style: TextStyle(color: Colors.white, fontSize: 14.5),
                          decoration: InputDecoration(
                              prefixIconConstraints:
                                  BoxConstraints(minWidth: 45),
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.white70,
                                size: 22,
                              ),
                              border: InputBorder.none,
                              hintText: 'Enter Email',
                              hintStyle: TextStyle(
                                  color: Colors.white60, fontSize: 14.5),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)
                                      .copyWith(
                                          bottomRight: Radius.circular(0),
                                          topLeft: Radius.circular(0)),
                                  borderSide:
                                      BorderSide(color: Colors.white38)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)
                                      .copyWith(
                                          bottomRight: Radius.circular(0),
                                          topLeft: Radius.circular(0)),
                                  borderSide:
                                      BorderSide(color: Colors.white70))),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30)
                            .copyWith(bottom: 10),
                        child: TextFormField(
                          controller: passwordcont,
                          style: TextStyle(color: Colors.white, fontSize: 14.5),
                          obscureText: isPasswordVisible ? false : true,
                          decoration: InputDecoration(
                              prefixIconConstraints:
                                  BoxConstraints(minWidth: 45),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.white70,
                                size: 22,
                              ),
                              suffixIconConstraints:
                                  BoxConstraints(minWidth: 45, maxWidth: 46),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isPasswordVisible = !isPasswordVisible;
                                  });
                                },
                                child: Icon(
                                  isPasswordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.white70,
                                  size: 22,
                                ),
                              ),
                              border: InputBorder.none,
                              hintText: 'Enter Password',
                              hintStyle: TextStyle(
                                  color: Colors.white60, fontSize: 14.5),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)
                                      .copyWith(
                                          bottomRight: Radius.circular(0),
                                          topLeft: Radius.circular(0)),
                                  borderSide:
                                      BorderSide(color: Colors.white38)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)
                                      .copyWith(
                                          bottomRight: Radius.circular(0),
                                          topLeft: Radius.circular(0)),
                                  borderSide:
                                      BorderSide(color: Colors.white70))),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                GestureDetector(
                  onTap: () async {
                    User u = User();
                    u.email = emailcont.text;
                    u.password = passwordcont.text;
                    String? response = await u.login();
                    if (response == null) {
                      //show alert of error

                    } else if (response == "\"false\"") {
                      //show alert invalued email password
                    } else {
                      dynamic map = jsonDecode(response);
                      String role = map["Role"].toLowerCase();
                      String email = map["email"];
                      int id = map["UserId"];
                      if (role == "admin") {
                        User u = User.fromMap(map);
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return AdminDashboard();
                        }));
                      } else if (role == "society member") {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return SMDashboard();
                        }));
                      } else if (role == "student") {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return StudentDashboard();
                        }));
                      }
                    }
                  },
                  child: Container(
                    height: 53,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 4,
                              color: Colors.black12.withOpacity(.2),
                              offset: Offset(2, 2))
                        ],
                        borderRadius: BorderRadius.circular(30).copyWith(
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(0)),
                        gradient: LinearGradient(colors: [
                          Colors.purple.shade200,
                          Colors.purple.shade900
                        ])),
                    child: Text('Login',
                        style: TextStyle(
                            color: Colors.white.withOpacity(.8),
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
