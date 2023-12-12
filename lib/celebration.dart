import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lone/Dob.dart';
import 'package:lone/cibil2.dart';

import 'newscreen.dart';

class Celebration extends StatefulWidget {
  @override
  State<Celebration> createState() => _CelebrationState();
}

class _CelebrationState extends State<Celebration> {
  final TextEditingController _otpController = TextEditingController();

  var agree=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,
            body: SingleChildScrollView(
              child: Stack(/*ClipPath(
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
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 30,),
                        Image.asset("assets/logo.png",scale: 2,),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Image.asset("assets/celebration.png",scale: 8,),
                        ),
                        SizedBox(height: 50.0),
                        Text("Welcome to 1Lone - Where Your Finances Unite!",
                          textAlign: TextAlign.center,
                          style:TextStyle(
                            letterSpacing: 1,
                            fontFamily:'Cirka',
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0, // Adjust the font size as needed
                            color: Colors.white, // Adjust the color as needed
                          ),),
                        SizedBox(height: 80.0),

                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Checkbox(side: MaterialStateBorderSide.resolveWith(
                                  (states) => BorderSide(width: 1.5, color: Colors.white),
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
                            Container(width: MediaQuery.of(context).size.width-120,
                              child: Text("I hereby appoint 1Lone as my authorized representative to receive my credit information from bureau",
                                textAlign: TextAlign.start,
                                textDirection: TextDirection.ltr,
                                style:TextStyle(
                                  //fontFamily:'Cirka',
                                  fontSize: 17.0, // Adjust the font size as needed
                                  color: Colors.grey, // Adjust the color as needed
                                ),),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 50,left: 10,right: 10),
                          width: MediaQuery.of(context).size.width-40,
                          height: 45,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>cibil2()));
                            },
                            child: Text('Get Credit Score for FREE!',style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                //fontWeight: FontWeight.bold
                            )
                              ,),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.white), // Button color
                              side: MaterialStateProperty.all(
                                BorderSide(
                                  color: Colors.black, // White border color
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
