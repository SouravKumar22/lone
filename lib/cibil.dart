import 'package:flutter/material.dart';

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
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Image.asset("assets/cibil.jpg",scale: 3,),
                ),
                Text("You are one step away to get your CIBIL Report",
                  textAlign: TextAlign.center,
                  style:TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16.0, // Adjust the font size as needed
                    color: Colors.black, // Adjust the color as needed
                  ),),
                SizedBox(height: 20,),
                Text("Enter your Email ID",
                  textAlign: TextAlign.center,
                  style:TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0, // Adjust the font size as needed
                    color: Colors.black, // Adjust the color as needed
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
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your button's action here
                    },
                    child: Text('CIBIL REPORT',style:TextStyle(
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                      fontSize: 18.0, // Adjust the font size as needed
                      color: Colors.white, // Adjust the color as needed
                    ),),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xFF129661)), // Button color
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
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
                        shape: CircleBorder(),
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
                        fontWeight: FontWeight.normal,
                        fontSize: 16.0, // Adjust the font size as needed
                        color: Colors.black, // Adjust the color as needed
                      ),),
                    Text("Terms & Conditions",
                      textAlign: TextAlign.center,
                      style:TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.normal,
                        fontSize: 16.0, // Adjust the font size as needed
                        color: Colors.black, // Adjust the color as needed
                      ),),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 40,left: 10,right: 10),
                  width: MediaQuery.of(context).size.width-40,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your button's action here
                    },
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Get Now ',style:TextStyle(
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1,
                          fontSize: 18.0, // Adjust the font size as needed
                          color: Colors.white, // Adjust the color as needed
                        ),),
                        Icon(Icons.arrow_forward_rounded)
                      ],
                    ),
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