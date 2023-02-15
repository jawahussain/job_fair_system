import 'package:flutter/material.dart';

Widget sametextformfield(controller, title) {
  return TextFormField(
    controller: controller,
    style: TextStyle(
      color: Colors.white,
      fontSize: 14.5,
    ),
    decoration: InputDecoration(
        prefixIconConstraints: BoxConstraints(minWidth: 45),
        border: InputBorder.none,
        hintText: title,
        hintStyle: TextStyle(color: Colors.black, fontSize: 14.5),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100)
                .copyWith(bottomRight: Radius.circular(0)),
            borderSide: BorderSide(color: Colors.black)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100)
                .copyWith(bottomRight: Radius.circular(0)),
            borderSide: BorderSide(color: Colors.black))),
  );
}
