import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';

class  SuccessPage extends StatefulWidget {
  const  SuccessPage({super.key});

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 120,
                  ),
                  Image.asset('assets/images/success.png'),
                   SizedBox(
                    height: 30,
                   ),
                  Text(
                    "Thank you",
                    style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                   SizedBox(
                    height: 10.0,
                   ),
                  Container(
                    width: 251,
                    height: 72,
                    child: Text(
                      "Your Order will be delivered with invoice #9ds69hs. You can track the delivery in the order section.",
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
                    'Continue Order',
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
