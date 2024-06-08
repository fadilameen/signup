// ignore_for_file: prefer_const_constructors, avoid_print, camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'textfield.dart';

class signUp extends StatelessWidget {
  signUp({super.key});

  final _formKey = GlobalKey<FormState>();

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  String? _validatename(String? value) {
    if (value == null || value.isEmpty) {
      return 'Name cannot be empty';
    }
    return null;
  }

jgh
  String? _validateemail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email cannot be empty';
    }
    if (!value.contains('@')) {
      return 'Not a valid email';
    }
    return null;
  }

  String? _validatepass(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password cannot be empty';
    }
    if (value.length < 8) {
      return 'Must be greater than 8 characters';
    }
    return null;
  }

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
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Color(0xFFFFFFFF),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(27, 40, 27, 40),
                        child: Form(
                          key: _formKey,
                          child: ListView(
                            children: [
                              Center(
                                child: Text(
                                  "Create your account",
                                  style: TextStyle(fontSize: 22),
                                ),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Txt(
                                uptext: "Full Name",
                                hinttext: "You Name",
                                controller: name,
                                validator: _validatename,
                              ),
                              Txt(
                                uptext: "Email",
                                hinttext: "Your email",
                                controller: email,
                                validator: _validateemail,
                              ),
                              Txt(
                                uptext: "Password",
                                hinttext: "Enter Password",
                                controller: pass,
                                validator: _validatepass,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    print("validated successfully");
                                  }
                                },
                                child: Text("Create Account"),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
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
