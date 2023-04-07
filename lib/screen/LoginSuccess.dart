import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginSuccessPage extends StatefulWidget {
  const LoginSuccessPage({super.key});

  @override
  State<LoginSuccessPage> createState() => _LoginSuccessPageState();
}

class _LoginSuccessPageState extends State<LoginSuccessPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {},
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  
                  Image.asset('assets/images/success.png'),
                   SizedBox(
                    height: 10,
                   ),
                  Text(
                    "Phone Number Verified",
                    style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                   SizedBox(
                    height: 10.0,
                   ),
                  Container(
                    width: 251,
                    height: 72,
                    child: Text(
                      "Congradulations, your phone number has been verified. You can start using the app",
                      style: TextStyle(fontSize: 16.0, color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 311,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'CONTINUE',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    backgroundColor: HexColor("#4157FF"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
