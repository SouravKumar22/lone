import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            body: Container(
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Image.asset("assets/celebration.jpg",scale: 2.5,),
                  ),
                  Text("Congratulations! John for successful login at 1Lone",
                    textAlign: TextAlign.center,
                    style:TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0, // Adjust the font size as needed
                      color: Colors.black, // Adjust the color as needed
                    ),),
                  SizedBox(height: 60.0),
                  Text("Now you can save up to 45% on your current EMI i.e. from ₹1,00,000 to ₹55,000",
                    textAlign: TextAlign.center,
                    style:TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.normal,
                      fontSize: 20.0, // Adjust the font size as needed
                      color: Colors.black, // Adjust the color as needed
                    ),),
                  SizedBox(height: 20,),
                  Text("Link to Below Calculation",
                    textAlign: TextAlign.center,
                    style:TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15.0, // Adjust the font size as needed
                      color: Colors.black, // Adjust the color as needed
                    ),),
                  SizedBox(height: 50.0),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Get Credit Score for ",
                        textAlign: TextAlign.center,
                        style:TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16.0, // Adjust the font size as needed
                          color: Colors.black, // Adjust the color as needed
                        ),),
                      Text("FREE!",
                        textAlign: TextAlign.center,
                        style:TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16.0, // Adjust the font size as needed
                          color: Colors.green, // Adjust the color as needed
                        ),),
                    ],
                  ),

                  SizedBox(height: 25.0),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Checkbox(side: MaterialStateBorderSide.resolveWith(
                            (states) => BorderSide(width: 1.5, color: Colors.black),
                      ),
                          activeColor: Colors.white,
                          checkColor: Colors.black,
                          shape: CircleBorder(),
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
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0, // Adjust the font size as needed
                            color: Colors.black, // Adjust the color as needed
                          ),),
                      ),
                    ],
                  ),

                  SizedBox(height: 16.0),
                  Container(
                    margin: EdgeInsets.only(top: 70,left: 10,right: 10),
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
