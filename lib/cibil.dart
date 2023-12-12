import 'package:flutter/material.dart';
import 'package:lone/celebration.dart';

import 'cibil2.dart';

class GetCIBIL extends StatefulWidget {
  @override
  State<GetCIBIL> createState() => _GetCIBILState();
}


class _GetCIBILState extends State<GetCIBIL> {

  var agree=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.all(18.0),
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50,),
                Image.asset("assets/logo.png",scale: 2,),
                SizedBox(height: 60,),
                /*Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset("assets/cibil1.png",scale: 5,),
                ),*/
                Text("You are one step away to get your CIBIL Report",
                  textAlign: TextAlign.center,
                  style:TextStyle(
                    letterSpacing: 0.5,
                    fontFamily:'Cirka',
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0, // Adjust the font size as needed
                    color: Colors.grey, // Adjust the color as needed
                  ),),
                SizedBox(height: 20,),
                Text("Enter your Email ID",
                  textAlign: TextAlign.center,
                  style:TextStyle(
                    letterSpacing: 1,
                    fontFamily:'Cirka',
                    fontWeight: FontWeight.bold,
                    fontSize: 27.0, // Adjust the font size as needed
                    color: Colors.white, // Adjust the color as needed
                  ),),
                SizedBox(height: 40.0),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.normal),

                    decoration: InputDecoration(

                      focusedBorder:OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade300, width: 1.0),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      hintText: 'johnkevin@gmail.com',
                      hintStyle: TextStyle(fontWeight: FontWeight.bold),
                      filled: true,
                      fillColor: Colors.white, // Background color
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0,), // Adjust the radius as needed
                      ),
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 15,left: 10,right: 10),
                  width: MediaQuery.of(context).size.width-40,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Celebration()));
                    },
                    child: Text('GET NOW',style:TextStyle(
                      //fontWeight: FontWeight.bold,
                      // fontFamily:'Cirka',
                      letterSpacing: 1,
                      fontSize: 20.0, // Adjust the font size as needed
                      color: Colors.white, // Adjust the color as needed
                    ),),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xFF0076CE)), // Button color
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0), // Adjust the radius as needed
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40.0),

                Row(mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Checkbox(side: MaterialStateBorderSide.resolveWith(
                          (states) => BorderSide(width: 1.5, color: Colors.black),
                    ),
                        activeColor: Colors.white,

                        checkColor: Colors.black,
                        value: agree,
                        onChanged: (val){
                          setState(() {
                            agree=!agree;
                          });
                        }
                    ),
                    Text("I agree to the ",
                      textAlign: TextAlign.center,
                      style:TextStyle(
                        letterSpacing: 0.5,
                        // fontFamily:'Cirka',
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0, // Adjust the font size as needed
                        color: Colors.white, // Adjust the color as needed
                      ),),
                    Text("Terms & Conditions",
                      textAlign: TextAlign.center,
                      style:TextStyle(
                        letterSpacing: 0.5,
                        decoration: TextDecoration.underline,
                        // fontFamily:'Cirka',
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0, // Adjust the font size as needed
                        color: Colors.white, // Adjust the color as needed
                      ),),
                  ],
                ),
                /*Container(
                  margin: EdgeInsets.only(top: 40,left: 10,right: 10),
                  width: MediaQuery.of(context).size.width-40,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Celebration()));
                    },
                    child: Text('Get Now ',style:TextStyle(
                      fontWeight: FontWeight.bold,
                      // fontFamily:'Cirka',
                      letterSpacing: 1,
                      fontSize: 20.0, // Adjust the font size as needed
                      color: Colors.black, // Adjust the color as needed
                    ),),
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
                )*/
              ],
            ),
          ),
        ),
      );
  }
}