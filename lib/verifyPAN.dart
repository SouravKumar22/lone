import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text("Verify your PAN Card",style:TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0, // Adjust the font size as needed
                    color: Colors.white, // Adjust the color as needed
                  ),),
                  SizedBox(height: 70.0),
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
                              Image.asset("assets/pancard.jpg",scale: 3,),
                              SizedBox(height: 20,),
                              Text(
                                'Upload PAN Card',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text('Upload photo/PDF of original PAN card.',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal
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
                      Image.asset("assets/security.jpg",scale: 3,),
                      Text('  Your data is fully secured with us.',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.normal
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50,left: 10,right: 10),
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