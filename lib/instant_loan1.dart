import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lone/emi_calculator.dart';

import 'cibil2.dart';

class InstantLoan1 extends StatefulWidget {  @override
  State<InstantLoan1> createState() => _InstantLoan1State();
}

class _InstantLoan1State extends State<InstantLoan1> {
  double _sliderValue = 70000;
  List months =[6,9,12,24,30,36];
  int m=-1;
  @override
  Widget build(BuildContext context) {
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
            Text("Loan Details",
            style: TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),),
            Container(
              margin: EdgeInsets.only(left: 40,right: 40),
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 4 ),
                  trackHeight: 7,
              ), child: Slider(
                inactiveColor: Colors.white,
                activeColor: Colors.blue,
                value: 2,
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
              alignment: Alignment.center,
              height: 235,
              width: 380,
              margin: EdgeInsets.only(left:20,right: 20,top: 50),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10.0),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Text("Select Loan Amount",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),),
                  SizedBox(height: 60,),
                  Text("₹"+_sliderValue.toInt().toString(),
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold
                    ),),
                  Slider(
                    activeColor: Colors.indigo,
                    value: _sliderValue,
                    onChanged: (double value) {
                      setState(() {
                        _sliderValue = value;
                      });
                    },
                    min: 20000,
                    max: 200000,
                    label: '$_sliderValue',
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width-80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("₹20,000", style: TextStyle(fontSize: 14,),),
                        Spacer(),
                        Text("₹2,00,000", style: TextStyle(fontSize: 14,),),
                      ],
                    ),
                  )

                ],
              ),
            ),
            Container(height: 50,
              margin: EdgeInsets.all(15),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: months.length,
                  itemBuilder: (context,index){
                return Container(
                  margin: EdgeInsets.all(5),
                  child: ElevatedButton(onPressed: (){
                    setState(() {
                      m=index;
                    });
                  },
                    style: ElevatedButton.styleFrom(
                      primary: m==index?Colors.indigo:Colors.white, // Background color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0), // Rounded corners
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        '${months[index]} months',
                        style: TextStyle(fontSize: 12.0, color: m==index?Colors.white:Colors.black),
                      ),
                    ),
                  ),
                );
              }),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                margin: EdgeInsets.only(left:10, right: 10),
                padding: EdgeInsets.symmetric(vertical: 8),
                width: MediaQuery.of(context).size.width-10,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),

                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text('EMI Amount',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              // fontFamily:'Cirka',
                              // fontWeight: FontWeight.bold,
                            ),),
                        ),
                        Spacer(),
                        Text('₹ 8,944   ',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                            // fontFamily:'Cirka',
                          ),),],
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text('Interest Rate',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              // fontWeight: FontWeight.bold,
                              // fontFamily:'Cirka',
                            ),),
                        ),
                        Spacer(),
                        Text('21%   ',
                          style: TextStyle(
                              fontSize: 14,
                              // fontFamily:'Cirka',
                              // fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),),
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text('First EMI Date',
                            style: TextStyle(
                              color: Colors.black,
                              // fontWeight: FontWeight.bold,
                              // fontFamily:'Cirka',
                              fontSize: 14,
                            ),),
                        ),
                        Spacer(),
                        Text('1 May   ',
                          style: TextStyle(
                            // fontFamily:'Cirka',
                              fontSize: 14,
                              color: Colors.black
                          ),),
                        ],
                    ),
                    SizedBox(height: 10,)
                  ],
                ),
              ),
            ),
            Container(
              height: 45,

              width: MediaQuery.of(context).size.width-40,
              margin: EdgeInsets.only(top: 50, bottom: 50),
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Emi_Calculator()));
              },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0), // Adjust the radius as needed
                    ),),
                  backgroundColor: MaterialStateProperty.all(Color(0xFF0076CE)), // Button color
                ),
                child: Text('Continue',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,

                  ),),

              ),
            ),
          ]
        ),
      ),
      bottomNavigationBar: bottomBar(context, 0),
    );

  }
}