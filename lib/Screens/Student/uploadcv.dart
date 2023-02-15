import 'package:flutter/material.dart';
import 'package:job_fair_system/Widgets/textfield.dart';

class UploadCV extends StatefulWidget {
  const UploadCV({Key? key}) : super(key: key);

  @override
  State<UploadCV> createState() => _UploadCVState();
}

const List<String> list = <String>['Choose Semester', '7th', '8th', 'Passout'];

class _UploadCVState extends State<UploadCV> {
  Map<String, bool> values = {
    'Flutter': false,
    'IOS': false,
    'Javascript': false,
    'React JS': false,
    'React Native': false,
    'Andorid': false,
    '.Net': false,
    'Teaching': false,
    'Database': false,
    'Networks': false,
    'Web Development': false,
    'Mobile Application': false,
    'Freelancing': false
  };

  TextEditingController proTitle = TextEditingController();
  String dropdowmsem = list.first;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Student Detail"),
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
              child: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 10),
                  child: Row(
                    children: [
                      Text(
                        "Semester",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        width: 190,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white, //<-- SEE HERE
                        ),
                        child: DropdownButton<String>(
                          dropdownColor: Colors.white,
                          value: dropdowmsem,
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdowmsem = newValue!;
                            });
                          },
                          items: list
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
                height: 5,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 10),
                child: sametextformfield(null, 'Enter Project Title'),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 10),
                  child:
                      sametextformfield(proTitle, 'Enter Project Technology')),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 10),
                child: sametextformfield(null, 'Enter Project Grade'),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 10),
                child: sametextformfield(null, 'Enter CGPA'),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 10),
                  child: sametextformfield(null, 'Enter Your DSA Grade')),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 10),
                child: sametextformfield(null, "Enter Your ECOM Grade"),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 10),
                child: sametextformfield(null, 'Enter Your VP Grade'),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 10),
                child: sametextformfield(null, 'Enter Your PF Grade'),
              ),
              SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(right: 30),
                  child: Text('Select Your Skills',
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Column(
                children: values.keys.map((String key) {
                  return CheckboxListTile(
                      title: Text(key),
                      value: values[key],
                      onChanged: (bool? value) {
                        setState(() {
                          values[key] = value!;
                        });
                      });
                }).toList(),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 19,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Other",
                      style: TextStyle(
                          fontSize: 18, decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: 150,
                      color: Colors.lightBlue,
                      child: Center(
                        child: Text(
                          "Upload CV",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 100, vertical: 15),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: (() {}),
                    child: Text("Save")),
              )
            ],
          )),
        ),
      ),
    );
  }
}
