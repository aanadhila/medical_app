import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/Welcome.png',
                width: 258,
                height: 258,
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                  width: 256,
                  height: 96,
                  child: Column(
                    children: <Widget>[
                      const Text(
                        "Welcome to Medtech",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      const Text(
                        "Do you want some help with your health to get better life?.",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      )
                    ],
                  )),
              SizedBox(
                width: 311,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('SIGN UP WITH EMAIL'),
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    backgroundColor: HexColor("#4157FF"),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                width: 311,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child:Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Image.asset('assets/images/facebook.png'),
                    Text('CONTINUE WITH FACEBOOK'),
                  ],), 
                  style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      backgroundColor: HexColor("#FFFFFF"),
                      foregroundColor: HexColor("#000000")),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                width: 311,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [ 
                    Image.asset('assets/images/google.png'),
                    Text('CONTINUE WITH GMAIL'),
                  ],),
                  style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      backgroundColor: HexColor("#FFFFFF"),
                      foregroundColor: HexColor("#000000")),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TextButton(onPressed: () {}, child: Text("Login",))
            ],
          ),
        ),
      ),
    );
  }
}
