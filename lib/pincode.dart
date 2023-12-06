import 'package:flutter/material.dart';
import 'package:lone/cibil.dart';

class Pincode extends StatelessWidget {

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
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 80,),
                    Text("Enter your Pincode",style:TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0, // Adjust the font size as needed
                      color: Colors.white, // Adjust the color as needed
                    ),),
                    SizedBox(height: 120.0),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
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
                      margin: EdgeInsets.only(top: 70,left: 10,right: 10),
                      width: MediaQuery.of(context).size.width-40,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>GetCIBIL()));
                        },
                        child: Text('Continue',style: TextStyle(color: Colors.white),),
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
