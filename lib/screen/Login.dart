import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
        body: Container(
          margin: EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome Back!",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.person), hintText: "Username"),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.lock), hintText: "Password"),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: 311,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Login', style: TextStyle( fontSize: 20.0),),
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: HexColor("#4157FF"),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_back, size: 14.0,),
                  Text(
                    "Don't have an account? Sign Up",
                    style: TextStyle(color: Colors.grey, fontSize: 14.0),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
