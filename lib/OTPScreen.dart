import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

import 'details.dart';
import 'newscreen.dart';

class OtpScreen extends StatefulWidget {
  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: Container(
              alignment: Alignment.topCenter,
              decoration: const BoxDecoration(
                 color: Colors.black),
              child: Column(
                children: [
                  SizedBox(height: 80,),
                  // Positioned(
                  //   top: 30,
                  //     left: 130,
                  //     child:
                      Center(
                          child: Image.asset("assets/logo.png", scale: 2,)),
                  // ),
                  // Positioned(
                  //   top: 50,
                  //   left: 0,
                  //   child:
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Padding(
                        //   padding: const EdgeInsets.all(30.0),
                        //   child: Image.asset("assets/otp1.png"),
                        // ),
                        SizedBox(height: 60,),
                        Text("Enter OTP sent on\n+9112XXXX7890",style:TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Cirka',
                          letterSpacing: 1,
                          fontSize: 25.0, // Adjust the font size as needed
                          color: Colors.white, // Adjust the color as needed
                        ),),
                        SizedBox(height: 40.0),
                        PinCodeTextField(
                          pinBoxWidth: 50,
                          pinBoxHeight: 50,
                          controller: _otpController,
                          keyboardType: TextInputType.number,
                          maxLength: 4, // Set the length of OTP
                          pinBoxRadius: 10,
                          pinTextStyle: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,
                          color: Colors.black),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 70,left: 10,right: 10),
                          width: MediaQuery.of(context).size.width-40,
                          height: 45,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Details()));
                            },
                            child: Text('Continue',style: TextStyle(
                                fontSize: 20,
                                color: Colors.white),),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Color(0xFF0076CE)), // Button color
                              side: MaterialStateProperty.all(
                                BorderSide(
                                  color: Colors.white, // White border color
                                  width: 0.0, // Adjust the border width as needed
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
                  // ),
                ],
              ),
            ),
      );
  }
}
