// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Txt extends StatelessWidget {
  const Txt(
      {super.key,
      required this.uptext,
      required this.hinttext,
      required this.controller,
      required this.validator});

  final String uptext, hinttext;
  final TextEditingController controller;
  final String? Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: uptext,
            style: TextStyle(color: Colors.black, fontSize: 16.0),
            children: <TextSpan>[
              TextSpan(
                text: '*',
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
        ),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hinttext,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          validator: validator,
        ),
      ],
    );
  }
}

late double top;
late Color color;
Positioned box(double top, Color color) {
  return Positioned(
    left: 3,
    right: 3,
    top: top,
    bottom: 5,
    child: Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(40), color: color),
    ),
  );
}
