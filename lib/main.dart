import 'package:flutter/material.dart';
import 'package:medical_app/SplashScreenWhite.dart';
import 'package:medical_app/SplashScreenBlue.dart';
import 'package:medical_app/screen/IntroPage.dart';
import 'package:medical_app/screen/Internet.dart';
import 'package:medical_app/screen/LoginSuccess.dart';
import 'package:medical_app/screen/Success.dart';
import 'package:medical_app/screen/Verify.dart';
import 'Walktrough1.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Fluterku',
      home: VerifyPage(),
    );
  }
}