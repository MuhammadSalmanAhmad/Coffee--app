import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFEBE9),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipPath(
            clipper: MyCustomClipper(),
            child: Container(
              height: 500,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/homepage6.jpg"),
                      fit: BoxFit.cover)),
            ),
          ),
          Center(
            child: Text(
              "Welcome to second cup coffee",
              style: GoogleFonts.montserrat(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6D4C41)),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff4E342E),
                      shape: StadiumBorder(),
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 5)),
                  onPressed: () {
                    Navigator.pushNamed(context, 'SignupScreen');
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: Color(0xff4E342E),
                        padding: EdgeInsets.symmetric(horizontal: 30)),
                    onPressed: () {
                      Navigator.pushNamed(context, 'signinScreen');
                    },
                    child: Text("Login"))
              ],
            ),
          ),
          SizedBox(
            height: 35,
          ),
          OutlinedButton.icon(
              style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  side: BorderSide(width: 2, color: Colors.blue)),
              onPressed: () {},
              icon: Icon(Icons.facebook),
              label: Text("Connect with Facebook")),
        ],
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip

    Path path = new Path();
    path.lineTo(0, size.height * 0.85); //vertical line
    path.cubicTo(size.width / 3, size.height, 2 * size.width / 3,
        size.height * 0.7, size.width, size.height * 0.85); //cubic curve
    path.lineTo(size.width, 0); //vertical line
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
