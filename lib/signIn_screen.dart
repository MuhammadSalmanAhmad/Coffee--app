import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

class SignInscreen extends StatefulWidget {
  const SignInscreen({super.key});

  @override
  State<SignInscreen> createState() => _SignInscreenState();
}

class _SignInscreenState extends State<SignInscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Text("Welcome Back ",
                        style: GoogleFonts.libreBaskerville(
                            textStyle: TextStyle(
                                fontSize: 30,
                                color: Colors.brown,
                                fontWeight: FontWeight.bold))),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Text(
                    "Login to continue ",
                    style: GoogleFonts.actor(
                        textStyle: TextStyle(
                      color: Color(0xff455A64),
                      fontSize: 20,
                    )),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Form(
                        child: Wrap(
                      runSpacing: 30,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              icon: Icon(Icons.email),
                              labelText: "Email",
                              labelStyle: TextStyle(color: Color(0xff616161))),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              icon: Icon(Icons.password),
                              labelText: "Password",
                              labelStyle: TextStyle(color: Color(0xff616161))),
                          obscureText: true,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Forgot password?",
                                  style: TextStyle(color: Color(0xff795548)),
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    )),
                  ),
                  SizedBox(height: 30,),
                  
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown,
                        shape: StadiumBorder(),
                        padding:
                            EdgeInsets.symmetric(horizontal: 100, vertical: 12)),
                    onPressed: () {},
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 150,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have any account?"),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'SignupScreen');
                          },
                          child: Text(
                            "Register",
                            style: TextStyle(
                                color: Color(0xff795548),
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  )
                ],
              ),
            )));
  }
}
