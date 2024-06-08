import 'package:flutter/material.dart';

class MyDesign extends StatelessWidget {
  const MyDesign({super.key, required this.mainContent});

  final Widget mainContent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/1.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0, -0.7), // Center of the upper half
            child: Container(
              height: 94,
              width: 108,
              decoration: const BoxDecoration(
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
                  box(screenheight * 0.33, const Color(0xFFB9DB7E)),
                  box(screenheight * 0.345, const Color(0xFF3FB283)),
                  Positioned(
                    left: 3,
                    right: 3,
                    top: screenheight * 0.36,
                    bottom: 5,
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: const Color(0xFFFFFFFF),
                        ),
                        child: mainContent),
                  ),
                ],
              );
            },
          ),
          Align(
            alignment: const Alignment(-1, -0.12), // Center of the upper half
            child: Container(
              height: 84,
              width: 67,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image 19.png"),
                ),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(1, 1.032), // Center of the upper half
            child: Container(
              height: 126,
              width: 101,
              decoration: const BoxDecoration(
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
