
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Container(
          alignment: Alignment.topCenter,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF101218),
                  Color(0xFF525861),
                  Colors.grey
                ],)),
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Enter your Name",style:TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0, // Adjust the font size as needed
                color: Colors.white, // Adjust the color as needed
              ),),
              SizedBox(height: 16.0),
              Text("As per PAN",style:TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 22.0, // Adjust the font size as needed
                color: Colors.white, // Adjust the color as needed
              ),),

              SizedBox(height: 60.0),
              TextField(textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Mr./Ms.',
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
                  hintText: 'First Name',
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
