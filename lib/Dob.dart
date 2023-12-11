import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lone/verifyPAN.dart';

import 'cibil.dart';
import 'newscreen.dart';

class Dob extends StatelessWidget {
  final TextEditingController _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
            body: SingleChildScrollView(
              child: Stack(
                children: [
                  /*ClipPath(
                    clipper: DrawClip(),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height *0.7,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Color(0xFF170151), Color(0xFF000000)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                      ),
                    ),
                  ),*/
                  Container(
                    alignment: Alignment.topCenter,
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 30,),
                        Image.asset("assets/logo.png",scale: 1.5,),
                        SizedBox(height: 60,),
                        Text("Enter your Details",style:TextStyle(
                          fontFamily:'Cirka',
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0, // Adjust the font size as needed
                          color: Colors.white, // Adjust the color as needed
                        ),),
                        Text("(as per the PAN)",
                          style:TextStyle(
                            letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0, // Adjust the font size as needed
                          color: Colors.white, // Adjust the color as needed
                        ),),
                        SizedBox(height: 60.0),
                        //PAN
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            width: MediaQuery.of(context).size.width,
                            alignment: Alignment.centerLeft,
                            child: Text("PAN",style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey),)),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            textAlign: TextAlign.start,
                            style: TextStyle(fontWeight: FontWeight.normal),
                            decoration: InputDecoration(
                              focusedBorder:OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.transparent, width: 2.0),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              hintText: 'Enter PAN Number',
                              filled: true,
                              fillColor: Colors.grey[200], // Background color
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0), // Adjust the radius as needed
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        //DOB
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          width: MediaQuery.of(context).size.width,
                            alignment: Alignment.centerLeft,
                            child: Text("DOB",style: TextStyle(color: Colors.grey),)),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                              hintText: 'DD/MM/YYYY',
                              filled: true,
                              fillColor: Colors.grey[200], // Background color
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0), // Adjust the radius as needed
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        //PIN Code
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          width: MediaQuery.of(context).size.width,
                            alignment: Alignment.centerLeft,
                            child: Text("PIN Code",style: TextStyle(color: Colors.grey),)),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                              focusedBorder:OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.transparent, width: 2.0),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              hintText: 'Enter Pincode',
                              filled: true,
                              fillColor: Colors.grey[200], // Background color
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0), // Adjust the radius as needed
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 50,left: 10,right: 10),
                          width: MediaQuery.of(context).size.width-40,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>GetCIBIL()));
                            },
                            child: Text('Continue',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.white), // Button color
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
                ],
              ),
            ),
      );
   }
}
