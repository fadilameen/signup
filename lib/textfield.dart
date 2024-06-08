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
            style: const TextStyle(color: Colors.black, fontSize: 16.0),
            children: const <TextSpan>[
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
