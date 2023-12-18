import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lone/instant_loan1.dart';

import 'cibil2.dart';

class Instant_Loan2 extends StatefulWidget {  @override
  State<Instant_Loan2> createState() => _Instant_Loan2State();
}

class _Instant_Loan2State extends State<Instant_Loan2> {
  Color borderColor = Colors.transparent;
  List imgURL = ["assets/sbi.png","assets/hdfc.png","assets/axis.png","assets/icici.png","assets/pnb_logo.png","assets/kotak_logo.png"];
  List items = ["Adarsh Co-Operative Bank","Lorem Ipsum Bank","Union Bank of India","Lorem Ipsum Bank","Bank of Baroda"];

  int pressedIndex = -1;
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 50,bottom: 20,left: 20,right: 20),
              width:MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
              ),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back,color: Colors.black,)),
                  Text("  Instant Loan",style: TextStyle(
                      fontFamily:'Cirka',
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Text("Select Your Bank",
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),),
            Container(
              margin: EdgeInsets.only(left: 40,right: 40),
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 4),
                  trackHeight: 7,
                ), child: Slider(
                inactiveColor: Colors.white,
                activeColor: Colors.blue,
                value: 1,
                onChanged: (double value) {
                  setState(() {
                    value;
                  });
                },
                min: 0,
                max: 3,
              ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30,top: 20),
              width: MediaQuery.of(context).size.width,
              child: Text("Bank Account Verification",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
            ),
            Container(
              margin: EdgeInsets.only(left: 30,top: 20),
              width: MediaQuery.of(context).size.width,
              child: Text("Popular Banks",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
            ),
            Container(
              height: 600,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 30, right: 30),
              child: GridView.builder(
                  gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns
                crossAxisSpacing: 30.0, // Spacing between columns
                mainAxisSpacing: 40.0, // Spacing between rows
              ),
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index){
                     return ElevatedButton(
                         onPressed: (){
                           setState(() {
                             pressedIndex = index; // Update the pressed button index
                           });
                         },
                         style: ButtonStyle(
                           backgroundColor: MaterialStateProperty.all(Colors.white),
                           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                             RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(25.0), // Adjust the radius as needed
                             ),),
                           side:MaterialStateProperty.all<BorderSide>(
                             BorderSide(
                               width: 3,
                               color: pressedIndex == index ? Colors.blue : Colors.white,
                             ),
                           ), // Button color
                         ),
                         child: Padding(
                           padding: EdgeInsets.all(8),
                           child: Center(
                             child: Image.asset(
                               imgURL[index], scale: 1,
                             ),
                           ),
                         ));
                  }
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, top: 20),
              alignment: Alignment.topLeft,
              child: Text('All other Banks',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 12
              ),),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 20),
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemCount: items.length,
                  itemBuilder: (BuildContext context, int index){
                  return Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0), // Rounded corners
                                  border: Border.all(
                                    color: Colors.black, // Border color
                                  ),
                                ),
                                child: Icon(Icons.account_balance,color: Color(0xFF06426E),)),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 15),
                              child: Text(items[index],
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                        )
                      ],
                    ),
                  );
                  }
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 35,left: 10,right: 10),
              width: MediaQuery.of(context).size.width-40,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>InstantLoan1()));
                },
                child: Text('Continue',style:TextStyle(
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

            
          ],
        ),
      ),
      bottomNavigationBar: bottomBar(context, 0),

    );

  }
}