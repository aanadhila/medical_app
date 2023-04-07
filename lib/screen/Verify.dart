import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class VerifyPage extends StatefulWidget {
  const VerifyPage({super.key});

  @override
  State<VerifyPage> createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {
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
          margin: EdgeInsets.all(32),
          width: 313,
          height: 311,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Enter the Verify Code",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 295,
                child: Text(
                  "We just send you a verification code via phone +65 556 798 241",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                  textAlign: TextAlign.left,
                ),
              ),
              OTPTextField(
                length: 6,
                width: MediaQuery.of(context).size.width,
                fieldWidth: 50,
                style: TextStyle(fontSize: 14),
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.underline,
                onCompleted: (pin) {
                  print("Completed: " + pin);
                },
              ),
              SizedBox(
                width: 311,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Submit Code',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    backgroundColor: HexColor("#4157FF"),
                  ),
                ),
              ),
              Text(
                "The verify code will expire in 00:59",
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              Text(
                "Resend Code",
                style: TextStyle(color: HexColor("#4157FF"), fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
