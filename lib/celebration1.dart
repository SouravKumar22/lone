import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cibil2.dart';

class Celebration1 extends StatelessWidget {  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/celebration1.png'),
              SizedBox(height: 40,),
              Text("Congratulations!",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Your loan application is submitted, your loan amount will get credited in few minutes, Thank you.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  letterSpacing: 0.5,
                  height: 1.5,
                  fontSize: 16,
                  color: Colors.white,
                ),),
              ),
              Container(
                height: 45,
                width: MediaQuery.of(context).size.width-40,
                margin: EdgeInsets.only(top: 50),
                child: ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>cibil2()));
                },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0), // Adjust the radius as needed
                      ),),
                    backgroundColor: MaterialStateProperty.all(Color(0xFF0076CE)), // Button color
                  ),
                  child: Text('Done',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),),

                ),
              ),
            ]
        ),
      ),

    );
  }
}