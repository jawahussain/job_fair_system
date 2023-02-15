import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CommentScreen extends StatefulWidget {
  const CommentScreen({super.key});

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Company Feedback"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Excellent",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                width: 6,
              ),
              Text("Good"),
              SizedBox(
                width: 5,
              ),
              SizedBox(
                width: 5,
              ),
              Text("Average"),
              SizedBox(
                width: 5,
              ),
              Text(
                "Fair",
              ),
              SizedBox(
                width: 5,
              ),
              Text("Poor")
            ],
          )
        ],
      )),
    );
  }
}
