import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lone/OTPScreen.dart';

import 'newscreen.dart';

class Otp extends StatefulWidget{
  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        alignment: Alignment.topCenter,
          decoration: const BoxDecoration(
            color: Colors.black,
              ),
        child: Stack(
          children: [
            // Positioned(
            //   top: 0,
            //   left: 0,
            //   child: ClipPath(
            //     clipper: DrawClip(),
            //     child: Container(
            //       width: MediaQuery.of(context).size.width,
            //       height: MediaQuery.of(context).size.height *0.7,
            //       decoration: BoxDecoration(
            //         gradient: LinearGradient(
            //             colors: [Color(0xFF170151), Color(0xFF000000)],
            //             begin: Alignment.topLeft,
            //             end: Alignment.bottomRight),
            //       ),
            //     ),
            //   ),
            // ),
            Positioned(
                top: 50,
                left:100,
                right: 100,
                child: Image.asset("assets/logo.png", scale: 2,)),
            Padding(
              padding: const EdgeInsets.only(top:80.0),
              child: Column(
                  children:[ /*Image.asset('assets/otp1.png'),*/
                    SizedBox(height: 90,),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text('Login with Mobile Number',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily:'Cirka',
                    fontSize: 27.0, // Adjust the font size as needed
                    color: Colors.white,
                    letterSpacing: 1
                )),
              ),
                    Padding(
                      padding: const EdgeInsets.only(top:60.0,left: 20.0,right: 20.0),
                      child: TextField(textAlign: TextAlign.center,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color:
                          Color(0xFF757885),
                          fontSize: 16.0),
                          hintText: 'Enter Mobile Number',
                          filled: true,
                          fillColor: Colors.grey[200], // Background color
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0), // Adjust the radius as needed
                          ),
                        ),
                      ),
                    ),
                  Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width-40,
                    margin: EdgeInsets.only(top: 50),
                    child: ElevatedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpScreen()));
                    },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0), // Adjust the radius as needed
                          ),),
                        backgroundColor: MaterialStateProperty.all(Colors.white), // Button color
                      ),
                      child: Text('Get OTP',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,

                      ),),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:50.0),
                    child: Text('Or',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0xFFEBEBEB)
                    ),),
                  ),
                  Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width-40,
                    padding: EdgeInsets.only(top:30.0),
                    child: ElevatedButton(onPressed:() {

                    },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                            ),
                          ),
                        ),
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height:45,width: 45,
                            child: Image.asset('assets/fb.png',)),
                        Text('   Continue with Facebook',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                        )),
                      ],
                    )),
                  ),
                    Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width-40,
                      padding: EdgeInsets.only(top:30.0),
                      child: ElevatedButton(onPressed:() {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                              ),
                            ),
                          ),
                          child: Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height:35,width: 35,
                                  child: Image.asset('assets/ggle.png',scale: 3,)),
                              Text('   Continue with Google',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18.0,
                                  )),
                            ],
                          )),
                    )]
      ),
            ),
          ],
        ),),

    );
  }
}