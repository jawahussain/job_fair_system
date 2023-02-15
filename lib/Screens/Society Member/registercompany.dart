import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:job_fair_system/Screens/Student/uploadcv.dart';
import 'package:job_fair_system/Widgets/textfield.dart';

class RegisterCompany extends StatefulWidget {
  const RegisterCompany({super.key});

  @override
  State<RegisterCompany> createState() => _RegisterCompanyState();
}

const List<String> list = <String>[
  'Choose level',
  'Fresh',
  'Intermediate',
  'Expert'
];

class _RegisterCompanyState extends State<RegisterCompany> {
  String dropdownval = list.first;
  Map<String, bool> time = {
    '9:00 AM to 12:00 PM': false,
    '2:00 PM to 5:00 PM': false,
    'Full Day': false,
  };
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register Company"),
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 10),
                child: sametextformfield(null, 'Enter Company Name'),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 10),
                child: sametextformfield(null, 'Enter Address'),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 10),
                  child: sametextformfield(null, 'Enter Contact No')),
              SizedBox(
                height: 5,
              ),
              Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 10),
                  child: sametextformfield(null, 'No of Interviewer')),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(right: 30),
                  child: Text('Required Time Slot',
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: time.keys.map((String key) {
                  return CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text(key),
                      value: time[key],
                      onChanged: (bool? value) {
                        setState(() {
                          time[key] = value!;
                        });
                      });
                }).toList(),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(right: 30),
                  child: Text('Recuriment area: (Please Click as may you want)',
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              ListView.builder(
                  itemCount: values.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: Text("Checkbox"),
                      trailing: DropdownButton<String>(
                        dropdownColor: Colors.white,
                        value: dropdownval,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownval = newValue!;
                          });
                        },
                        items:
                            list.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                            ),
                          );
                        }).toList(),
                      ),
                    );
                  }),
              InkWell(
                onTap: () {
                  Get.to(UploadCV());
                },
                child: Text("Upload CV"),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 100, vertical: 15),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: (() {}),
                    child: Text("Register")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
