import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class EmptyCartPage extends StatefulWidget {
  const EmptyCartPage({super.key});

  @override
  State<EmptyCartPage> createState() => _EmptyCartPageState();
}

class _EmptyCartPageState extends State<EmptyCartPage> {
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/Cart.png'),
            ],
          )
        ),
      ),
    );
  }
}