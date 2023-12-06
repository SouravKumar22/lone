import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lone/OTPScreen.dart';

class Otp extends StatefulWidget{
  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
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
                  Colors.grey
                ],
              )),
        child: Padding(
          padding: const EdgeInsets.only(top:50.0),
          child: SingleChildScrollView(
            child: Column(
                children:[ Image.asset('assets/otp1.png'),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text('Login with Mobile Number',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily:'Poppins',
                  fontSize: 20.0, // Adjust the font size as needed
                  color: Colors.white,
                  letterSpacing: 2
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
                  height: 110,
                  width: MediaQuery.of(context).size.width-40,
                  padding: const EdgeInsets.only(top:50.0),
                  child: ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpScreen()));
                  },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black), // Button color
                    ),
                    child: Text('Get OTP',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,

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
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                          ),
                        ),
                      ),
                      child: Row(
                    children: [
                      Image.asset('assets/fb.jpg'),
                      Text('   Continue with Facebook',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
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
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            Image.asset('assets/ggle.jpg'),
                            Text('   Continue with Google',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold
                                )),
                          ],
                        )),
                  )]
      ),
          ),
        ),),

    );
  }
}