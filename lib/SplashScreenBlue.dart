import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';

class SplashScreenBlue extends StatelessWidget {
  const SplashScreenBlue({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: HexColor('#4157FF'),
        body: Stack(
          alignment: Alignment.center,
          children: <Widget> [
            Image.asset('assets/images/patternHitam.png', fit: BoxFit.cover, width: double.infinity, height: double.infinity,),
            Image.asset('assets/images/LogoPutih.png'),
          ],
        ),
      ),
    );
  }
}
