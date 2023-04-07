import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Walktrough1 extends StatelessWidget {
  const Walktrough1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            margin: EdgeInsets.all(32),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/walkthrough1.png',
                    width: 256.0,
                    height: 284,
                  ),
                  Container(
                    width: 255,
                    height: 152,
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 16,
                        ),
                        const Text(
                          "View and buy Medicine online",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        const Text(
                          "Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "skip",
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      // use Spacer
                      Text(
                        "Next",
                        style: TextStyle(color: Colors.blue, fontSize: 14),
                      ),
                    ],
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
