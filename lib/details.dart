
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lone/Dob.dart';
import 'package:lone/celebration.dart';

import 'newscreen.dart';

class Details extends StatefulWidget {

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  String selectedValue = 'Mr.';

  List<String> options = ['Mr.', 'Miss/Mrs.'];

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
        body: Container(
          alignment: Alignment.topCenter,
          decoration: const BoxDecoration(
              color: Colors.black),
          child: SingleChildScrollView(
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
                  padding: const EdgeInsets.all(18.0),
                  alignment: Alignment.topCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 30,),
                      Image.asset("assets/logo.png",scale: 2,),
                      SizedBox(height: 60,),
                      Text("Enter your Name",style:TextStyle(
                        fontFamily: 'Cirka',
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                        fontSize: 27.0, // Adjust the font size as needed
                        color: Colors.white, // Adjust the color as needed
                      ),),
                      SizedBox(height: 16.0),
                      Text("(as per PAN)",style:TextStyle(
                        letterSpacing: 1,
                        fontSize: 22.0, // Adjust the font size as needed
                        color: Colors.white, // Adjust the color as needed
                      ),),

                      SizedBox(height: 60.0),

                      Container(alignment: Alignment.centerRight,
                        height: 60,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        width: MediaQuery.of(context).size.width-40,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                        child: DropdownButton<String>(
                          underline: Container(),
                          icon: Icon(Icons.keyboard_arrow_down,color: Colors.black,),
                          value: selectedValue,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedValue = newValue!;
                            });
                          },
                          items: options.map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value+space(context),style: TextStyle(fontSize: 16,
                                  //fontFamily:'Cirka',
                                  fontWeight: FontWeight.bold),),
                            );
                          }).toList(),
                        ),
                      ),
                     /* TextField(textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: 'Mr./Ms.',
                          filled: true,
                          fillColor: Colors.grey[200], // Background color
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0), // Adjust the radius as needed
                          ),
                        ),
                      ),*/
                      SizedBox(height: 16.0),
                      TextField(textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: 'First Name',
                          hintStyle: TextStyle(
                            // fontFamily: 'Cirka',
                            fontSize: 16,
                            // fontWeight: FontWeight.bold,
                          ),
                          filled: true,
                          fillColor: Colors.grey[200], // Background color
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0), // Adjust the radius as needed
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      TextField(textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: 'Last Name',
                          hintStyle: TextStyle(
                            fontSize: 16,
                            // fontFamily: 'Cirka',
                            // fontWeight: FontWeight.bold,
                          ),
                          filled: true,
                          fillColor: Colors.grey[200], // Background color
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0), // Adjust the radius as needed
                          ),
                        ),
                      ),
                      SizedBox(height: 32.0),
                      Container(
                        margin: EdgeInsets.only(top: 70),
                        width: MediaQuery.of(context).size.width-40,
                        height: 45,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Dob()));
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
                ),
              ],
            ),
          ),
        ),
      );
  }

  String space(BuildContext context) {
    var s="";
    for(int i=0;i<MediaQuery.of(context).size.width/10-10;i++)
      s=s+" ";
    print(s.length);
    return s;
  }
}
