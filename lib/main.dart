import 'package:flutter/material.dart';
import 'package:signup/signup.dart';
import 'package:signup/design1.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const MainApp(),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyDesign(
        mainContent: Center(
          child: Container(
            margin:
                const EdgeInsets.only(left: 47, right: 47, top: 30, bottom: 30),
            child: Column(
              children: [
                const Image(
                  image: AssetImage("assets/image 20.png"),
                  height: 212,
                  width: 186,
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 30,
                    right: 30,
                  ),
                  child: Text(
                    textAlign: TextAlign.center,
                    'Never forget to go green everyday, because the greener you go the higher you get',
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyDesign(
                          mainContent: SignUp(),
                        ),
                      ),
                    );
                  },
                  child: const Text("Sign Up"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
