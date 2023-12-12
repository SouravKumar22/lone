import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lone/instant_loan.dart';

import 'application2.dart';

class Application1 extends StatefulWidget{
  @override
  State<Application1> createState() => _Application1State();
}

class _Application1State extends State<Application1> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.black,
            // image: DecorationImage(
            //   colorFilter: ColorFilter.mode(Colors.indigo, BlendMode.darken),
            //   opacity: 0.9,
            //   fit: BoxFit.cover,
            //   image: AssetImage('assets/bg.png'),
            // )
          ),

          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 60,bottom: 20,left: 20,right: 20),
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
                        onTap:(){
                      Navigator.pop(context);
                      },
                          child: Icon(Icons.arrow_back,color: Colors.black,)),
                      Text("    Credit Score",style:
                      TextStyle(
                        fontSize: 19,
                          fontFamily: 'Cirka',
                          fontWeight: FontWeight.bold,
                          color: Colors.black),),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(

                    children: [
                      SizedBox(height: 20,),

                      /*Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Text('Step 1 of 2',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Cirka',
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                        ),),
                      ),*/
                      Center(
                        child: Container(
                          child: Image.asset('assets/logo.png', scale: 3,)
                        ),
                      ),
                      Text('Application Form',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cirka',
                        fontSize: 27,
                        letterSpacing: 1,
                        color: Colors.white,
                      ),),
                      SizedBox(height: 30.0),
                      //NAME
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.centerLeft,
                          child: Text("Name",style:
                          TextStyle(
                            //fontWeight: FontWeight.bold,
                              fontSize: 18,
                              //fontFamily: 'Cirka',
                              color: Colors.grey),)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              //fontWeight: FontWeight.bold,
                              color: Colors.black),
                          decoration: InputDecoration(
                            focusedBorder:OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.transparent, width: 2.0),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            hintText: 'John Kevin',
                            hintStyle: TextStyle(//fontWeight: FontWeight.bold,
                                color: Colors.black),
                            filled: true,
                            fillColor: Color(0xffEFEFEF), // Background color
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0), // Adjust the radius as needed
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      //DOB
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.centerLeft,
                          child: Text("DOB",style:
                          TextStyle(
                              //fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.grey),)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          textAlign: TextAlign.start,
                          style: TextStyle(//fontWeight: FontWeight.bold,
                              color: Colors.black),
                          decoration: InputDecoration(
                            focusedBorder:OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.transparent, width: 2.0),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            hintText: '02/11/1999',
                            hintStyle: TextStyle(//fontWeight: FontWeight.bold,
                                color: Colors.black),
                            filled: true,
                            fillColor: Color(0xffEFEFEF), // Background color
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0), // Adjust the radius as needed
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      //PAN
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.centerLeft,
                          child: Text("PAN",style:
                          TextStyle(
                              //fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.grey),)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              //fontWeight: FontWeight.bold,
                              color: Colors.black),
                          decoration: InputDecoration(
                            focusedBorder:OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.transparent, width: 2.0),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            hintText: 'ABCD0000',
                            hintStyle: TextStyle(//fontWeight: FontWeight.bold,
                                color: Colors.black),
                            filled: true,
                            fillColor: Color(0xffEFEFEF), // Background color
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0), // Adjust the radius as needed
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      //ADDRESS
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.centerLeft,
                          child: Text("Address",style:
                          TextStyle(
                              //fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.grey),)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              //fontWeight: FontWeight.bold,
                              color: Colors.black),
                          decoration: InputDecoration(
                            focusedBorder:OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.transparent, width: 2.0),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            hintText: '500012',
                            hintStyle: TextStyle(//fontWeight: FontWeight.bold,
                                color: Colors.black),
                            filled: true,
                            fillColor: Color(0xffEFEFEF), // Background color
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0), // Adjust the radius as needed
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      //MOBILE
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.centerLeft,
                          child: Text("Mobile",style:
                          TextStyle(
                              //fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.grey),)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          keyboardType: TextInputType.phone,
                          textAlign: TextAlign.start,
                          style: TextStyle(//fontWeight: FontWeight.bold,
                              color: Colors.black),
                          decoration: InputDecoration(
                            focusedBorder:OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.transparent, width: 2.0),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            hintText: '+91 9123456789',
                            hintStyle: TextStyle(//fontWeight: FontWeight.bold,
                                color: Colors.black),
                            filled: true,
                            fillColor: Color(0xffEFEFEF), // Background color
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0), // Adjust the radius as needed
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      //EMAIL
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.centerLeft,
                          child: Text("Email",style:
                          TextStyle(
                              //fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.grey),)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              //fontWeight: FontWeight.bold,
                              color: Colors.black),
                          decoration: InputDecoration(
                            focusedBorder:OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.transparent, width: 2.0),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            hintText: 'johnkevin@gmail.com',
                            hintStyle: TextStyle(//fontWeight: FontWeight.bold,
                                color: Colors.black),
                            filled: true,
                            fillColor: Color(0xffEFEFEF), // Background color
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0), // Adjust the radius as needed
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      //ORGANISATION WORKING FOR
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.centerLeft,
                          child: Text("Organisation Working For",style:
                          TextStyle(
                              //fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.grey),)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          textAlign: TextAlign.start,
                          style: TextStyle(//fontWeight: FontWeight.bold,
                              color: Colors.black),
                          decoration: InputDecoration(
                            focusedBorder:OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.transparent, width: 2.0),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            hintText: 'IT. Gov',
                            hintStyle: TextStyle(
                                //fontWeight: FontWeight.bold,
                                color: Colors.black),
                            filled: true,
                            fillColor: Color(0xffEFEFEF), // Background color
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0), // Adjust the radius as needed
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      //DESIGNATION
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.centerLeft,
                          child: Text("Designation",style:
                          TextStyle(
                              //fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.grey),)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          textAlign: TextAlign.start,
                          style: TextStyle(//fontWeight: FontWeight.bold,
                              color: Colors.black),
                          decoration: InputDecoration(
                            focusedBorder:OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.transparent, width: 2.0),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            hintText: 'Top Management',
                            hintStyle: TextStyle(//fontWeight: FontWeight.bold,
                                color: Colors.black),
                            filled: true,
                            fillColor: Color(0xffEFEFEF), // Background color
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0), // Adjust the radius as needed
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      //GROSS MONTHLY SALARY
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.centerLeft,
                          child: Text("Gross Monthly Salary",style:
                          TextStyle(
                              //fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.grey),)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              //fontWeight: FontWeight.bold,
                              color: Colors.black),
                          decoration: InputDecoration(
                            focusedBorder:OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.transparent, width: 2.0),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            hintText: '80-100k',
                            hintStyle: TextStyle(
                                //fontWeight: FontWeight.bold,
                                color: Colors.black),
                            filled: true,
                            fillColor: Color(0xffEFEFEF), // Background color
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0), // Adjust the radius as needed
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      //PROPERTY VALUE
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.centerLeft,
                          child: Text("Property Value (In INR)",style:
                          TextStyle(
                              //fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.grey),)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.start,
                          style: TextStyle(//fontWeight: FontWeight.bold,
                              color: Colors.black),
                          decoration: InputDecoration(
                            focusedBorder:OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.transparent, width: 2.0),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            hintText: '80,000,00',
                            hintStyle: TextStyle(
                                //fontWeight: FontWeight.bold,
                                color: Colors.black),
                            filled: true,
                            fillColor: Color(0xffEFEFEF), // Background color
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0), // Adjust the radius as needed
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      //LOAN APPLYING
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.centerLeft,
                          child: Text("Loan Applying (in INR)",style:
                          TextStyle(
                              //fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.grey),)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              //fontWeight: FontWeight.bold,
                              color: Colors.black),
                          decoration: InputDecoration(
                            focusedBorder:OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.transparent, width: 2.0),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            hintText: '15,000,00',
                            hintStyle: TextStyle(
                                //fontWeight: FontWeight.bold,
                                color: Colors.black),
                            filled: true,
                            fillColor: Color(0xffEFEFEF), // Background color
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0), // Adjust the radius as needed
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      //LOAN TENURE
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.centerLeft,
                          child: Text("Loan Tenure",style:
                          TextStyle(
                              //fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.grey),)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              //fontWeight: FontWeight.bold,
                              color: Colors.black),
                          decoration: InputDecoration(
                            focusedBorder:OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.transparent, width: 2.0),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            hintText: '80 months',
                            hintStyle: TextStyle(//fontWeight: FontWeight.bold,
                                color: Colors.black),
                            filled: true,
                            fillColor: Color(0xffEFEFEF), // Background color
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0), // Adjust the radius as needed
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 65,
                        margin: EdgeInsets.symmetric(vertical: 10),
                        padding: const EdgeInsets.all(10.0),
                        child: ElevatedButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => InstantLoan()
                                  )
                              );
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFC5D0FF)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0), // Adjust the radius as needed
                                ),
                              ),),
                            child:  Text('Next',style:
                            TextStyle(
                                fontSize: 20.0,
                                //fontFamily: 'Cirka',
                                //fontWeight: FontWeight.bold,
                                color: Color(0xFF001FA1) ),)),
                      ),


                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}