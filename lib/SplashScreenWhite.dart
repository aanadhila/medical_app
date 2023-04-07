import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashScreenWhite extends StatelessWidget {
  const SplashScreenWhite({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: <Widget> [
            Image.asset('assets/images/patternPutih.png', fit: BoxFit.cover, width: double.infinity, height: double.infinity,),
            Image.asset('assets/images/LogoBiru.png'),
          ],
        ),
      ),
    );
  }
}
