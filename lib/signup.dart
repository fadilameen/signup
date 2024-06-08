// ignore_for_file: prefer_const_constructors, avoid_print, camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'textfield.dart';

class signUp extends StatelessWidget {
  signUp({super.key, required this.mainContent});

  final Widget mainContent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/1.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, -0.7), // Center of the upper half
            child: Container(
              height: 94,
              width: 108,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image 23.png"),
                ),
              ),
            ),
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              final screenheight = constraints.maxHeight;
              return Stack(
                children: [
                  box(screenheight * 0.33, Color(0xFFB9DB7E)),
                  box(screenheight * 0.345, Color(0xFF3FB283)),
                  Positioned(
                      left: 3,
                      right: 3,
                      top: screenheight * 0.36,
                      bottom: 5,
                      child: mainContent),
                ],
              );
            },
          ),
          Align(
            alignment: Alignment(-1, -0.12), // Center of the upper half
            child: Container(
              height: 84,
              width: 67,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image 19.png"),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(1, 1.032), // Center of the upper half
            child: Container(
              height: 126,
              width: 101,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image 22.png"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
