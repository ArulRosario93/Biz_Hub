import 'package:biz_hub/Blog_Search.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailAddress = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String? validateEmail(String? value) {
      const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
          r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
          r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
          r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
          r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
          r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
          r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
      final regex = RegExp(pattern);

      return value!.isNotEmpty && !regex.hasMatch(value)
          ? 'Enter a valid email address'
          : null;
    }

    void HandleSubmission() {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Blog_Search(),
          ));
    }

    return Scaffold(
      body: Column(
        children: [
          Flexible(
            child: Container(),
            flex: 1,
          ),
          Text(
            "Biz Register",
            style: GoogleFonts.cinzel(fontSize: 30),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 20)),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: TextFormField(
                controller: emailAddress,
                validator: validateEmail,
                decoration: InputDecoration(
                  hintText: "Email Address",
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  hintStyle: GoogleFonts.cinzel(
                      textStyle: TextStyle(color: Colors.black87)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 3, color: Colors.black), //<-- SEE HERE
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.black),
                  ),
                )),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: TextFormField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  hintStyle: GoogleFonts.cinzel(
                      textStyle: TextStyle(color: Colors.black87)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 3, color: Colors.black), //<-- SEE HERE
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.black),
                  ),
                )),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.black,
            ),
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 44),
            child: InkWell(
              onTap: () => HandleSubmission(),
              child: Text(
                "Register",
                style: GoogleFonts.cinzel(color: Colors.white, fontSize: 17),
              ),
            ),
          ),
          Flexible(
            child: Container(),
            flex: 1,
          ),
        ],
      ),
    );
  }
}
