import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lone/cibil.dart';
import 'package:lone/pincode.dart';

class VerifyPan extends StatelessWidget {@override
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
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 70.0),
                    Text("Verify your PAN Card",style:TextStyle(
                      letterSpacing: 1,
                      fontFamily:'Cirka',
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0, // Adjust the font size as needed
                      color: Colors.white, // Adjust the color as needed
                    ),),
                    SizedBox(height: 60.0),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        textAlign: TextAlign.center,
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
                    SizedBox(height: 40,),
                    Container(
                      width: MediaQuery.of(context).size.width-40,
                      height: 170,
                      child: DottedBorder(
                        borderType: BorderType.RRect,
                        color: Colors.white, // Border color
                        radius: const Radius.circular(15), // Corner radius
                        dashPattern: [5, 5],
                        padding: EdgeInsets.all(12), // Padding inside the border
                        child: Container(
                          color: Colors.transparent, // Container background color
                          child: Center(
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset("assets/pan.jpg",scale: 3,),
                                SizedBox(height: 20,),
                                Text(
                                  'Upload PAN Card',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      //fontFamily:'Cirka',
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('Upload photo/PDF of original PAN card.',
                                  style: TextStyle(
                                      fontSize: 14,
                                      //fontFamily:'Cirka',
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 70,),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/security.png",scale: 3,),
                        Text('  Your data is fully secured with us.',
                          style: TextStyle(
                            letterSpacing: 0.5,
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            //fontFamily:'Cirka',
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50,left: 10,right: 10),
                      width: MediaQuery.of(context).size.width-40,
                      height: 55,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>GetCIBIL()));
                        },
                        child: Text('Continue',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white),),
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
            ),
            );
    }
}