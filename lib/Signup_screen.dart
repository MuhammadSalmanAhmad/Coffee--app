import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 150,
                child: Image.asset(
                  'assets/espresso.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Sign Up ",
              style: GoogleFonts.actor(
                  textStyle: TextStyle(
                      color: Color(0xff455A64),
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Form(
                    child: Wrap(
                  runSpacing: 10,
                  children: [
                    TextFormField(
                      validator: (value) {},
                      decoration: InputDecoration(
                        labelText: "Username",
                        icon: Icon(Icons.person),
                        labelStyle: TextStyle(color: Color(0xff616161)),
                      ),
                    ),
                    TextFormField(
                      validator: (value) {},
                      decoration: InputDecoration(
                        labelText: "email",
                        icon: Icon(Icons.email),
                        labelStyle: TextStyle(color: Color(0xff616161)),
                      ),
                    ),
                    TextFormField(
                      validator: (value) {},
                      decoration: InputDecoration(
                        labelText: "phone",
                        icon: Icon(Icons.phone),
                        labelStyle: TextStyle(color: Color(0xff616161)),
                      ),
                    ),
                    TextFormField(
                      validator: (value) {},
                      decoration: InputDecoration(
                        labelText: "password",
                        icon: Icon(Icons.password),
                        labelStyle: TextStyle(color: Color(0xff616161)),
                      ),
                      obscureText: true,
                    ),
                  ],
                ))),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    shape: StadiumBorder(),
                    padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10)),
                onPressed: () {
                  Navigator.pushNamed(context, 'signinScreen');
                },
                child: Text(
                  "Sign Up",
                )),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?"),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'signinScreen');
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Color(0xff795548),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )),
                    
      
              ],
            )
          ],
        ),
      ),
    );
  }
}
