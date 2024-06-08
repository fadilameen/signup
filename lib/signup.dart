import 'package:flutter/material.dart';
import 'textfield.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
    return Padding(
      padding: const EdgeInsets.fromLTRB(27, 40, 27, 40),
      child: Form(
        key: _formKey,
        child: ListView(
          children: [
            const Center(
              child: Text(
                "Create your account",
                style: TextStyle(fontSize: 22),
              ),
            ),
            const SizedBox(
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
                if (_formKey.currentState!.validate()) {}
              },
              child: const Text("Create Account"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Go Back"),
            )
          ],
        ),
      ),
    );
  }
}
