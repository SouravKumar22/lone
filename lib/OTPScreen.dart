import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class OtpScreen extends StatelessWidget {
  final TextEditingController _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: Container(
              alignment: Alignment.topCenter,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF101218),
                      Color(0xFF525861),
                    ],)),
              padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Image.asset("assets/otp.png"),
                  ),
                  Text("Enter OTP sent on\n+9112XXXX7890",style:TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0, // Adjust the font size as needed
                    color: Colors.white, // Adjust the color as needed
                  ),),
                  SizedBox(height: 60.0),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: PinCodeTextField(
                      controller: _otpController,
                      keyboardType: TextInputType.number,
                      maxLength: 4, // Set the length of OTP
                      pinBoxRadius: 10,
                      pinTextStyle: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Container(
                    margin: EdgeInsets.only(top: 70,left: 10,right: 10),
                    width: MediaQuery.of(context).size.width-40,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your button's action here
                      },
                      child: Text('Continue'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.black), // Button color
                        side: MaterialStateProperty.all(
                          BorderSide(
                            color: Colors.white, // White border color
                            width: 0.5, // Adjust the border width as needed
                          ),
                        ),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0), // Adjust the radius as needed
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
      );
  }
}