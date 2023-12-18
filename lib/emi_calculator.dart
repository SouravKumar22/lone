import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lone/celebration1.dart';

import 'cibil2.dart';

class Emi_Calculator extends StatefulWidget {

  @override
  State<Emi_Calculator> createState() => _Emi_CalculatorState();
}

class _Emi_CalculatorState extends State<Emi_Calculator> {
  double _sliderValue = 20000;
  double _sliderValue1 = 3;
  double _sliderValue2 = 21;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body:Container(
        decoration: const BoxDecoration(
        color: Colors.black,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 40,bottom: 10,left: 20,right: 20),
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
                    Text("  EMI Calculator",style: TextStyle(
                        fontFamily:'Cirka',
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),),
                    Spacer(),
                    Image.asset('assets/logo1.png', scale: 8,),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 160,
                width: 380,
                margin: EdgeInsets.only(left:15,right: 15,top: 50),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 30,),
                    Text("Your Loan EMI is",
                    style: TextStyle(
                      fontSize: 18
                    ),),
                    SizedBox(height: 15,),
                    Text("₹ 8,944",
                      style: TextStyle(
                          fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),),
                    SizedBox(height: 15,),
                    Text("Per Month",
                      style: TextStyle(
                        fontSize: 18,
                      ),),

                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 620,
                width: 380,
                margin: EdgeInsets.only(left:15,right: 15,top: 50),
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
                    SizedBox(height: 40,),
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
                    ),

                    SizedBox(height: 50,),
                    Text("Select Tenure",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),),
                    SizedBox(height: 40,),
                    Text(_sliderValue1.toInt().toString()+" "+"months",
                      style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold
                      ),),
                    Slider(
                      activeColor: Colors.indigo,
                      value: _sliderValue1,
                      onChanged: (double value) {
                        setState(() {
                          _sliderValue1 = value;
                        });
                      },
                      min: 3,
                      max: 48,
                      label: '$_sliderValue1',
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width-80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("3 months", style: TextStyle(fontSize: 14,),),
                          Spacer(),
                          Text("48 months", style: TextStyle(fontSize: 14,),),
                        ],
                      ),
                    ),

                    SizedBox(height: 50,),
                    Text("Interest Rate",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),),
                    SizedBox(height: 40,),
                    Text(_sliderValue2.toInt().toString()+" %",
                      style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold
                      ),),
                    Slider(
                      activeColor: Colors.indigo,
                      value: _sliderValue2,
                      onChanged: (double value) {
                        setState(() {
                          _sliderValue2 = value;
                        });
                      },
                      min: 0,
                      max: 30,
                      label: '$_sliderValue2',
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width-80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("0%", style: TextStyle(fontSize: 14,),),
                          Spacer(),
                          Text("30%", style: TextStyle(fontSize: 14,),),
                        ],
                      ),
                    )

                  ],
                ),

              ),
              Container(
                height: 45,

                width: MediaQuery.of(context).size.width-40,
                margin: EdgeInsets.only(top: 50, bottom: 50),
                child: ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Celebration1()));
                },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0), // Adjust the radius as needed
                      ),),
                    backgroundColor: MaterialStateProperty.all(Color(0xFF0076CE)), // Button color
                  ),
                  child: Text('Apply For Loan',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,

                    ),),

                ),
              ),
            ],
          ),
        ),
        ),
      bottomNavigationBar: bottomBar(context, 0),
    );

  }
}
