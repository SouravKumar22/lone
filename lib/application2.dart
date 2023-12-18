import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lone/instant_loan.dart';

import 'cibil2.dart';

class Application2 extends StatefulWidget{
  @override
  State<Application2> createState() => _Application2State();
}

class _Application2State extends State<Application2> {
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
                     onTap: (){
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
                     child: Text('Step 2 of 2',

                       textAlign: TextAlign.center,
                       style: TextStyle(
                           color: Colors.white,
                           fontSize: 14,
                           fontFamily: 'Cirka',
                           fontWeight: FontWeight.bold
                       ),),
                   ),*/
                   Center(
                     child: Container(
                       margin: EdgeInsets.only(left: 20, right: 20),
                       child: Image.asset('assets/logo.png', scale: 3,)
                     ),
                   ),
                   Text('Application Form',
                     style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 27,
                       letterSpacing: 1,
                       fontFamily: 'Cirka',
                       color: Colors.white,
                     ),),
                   SizedBox(height: 30.0),
                   //BANK NAME
                   Container(
                       padding: EdgeInsets.symmetric(horizontal: 15),
                       width: MediaQuery.of(context).size.width,
                       alignment: Alignment.centerLeft,
                       child: Text("Bank",style:
                       TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 18,
                           color: Colors.grey),)),
                   Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: TextField(
                         keyboardType: TextInputType.name,
                         textAlign: TextAlign.start,
                         style: TextStyle(fontWeight: FontWeight.bold,
                             color: Colors.black),
                         decoration: InputDecoration(
                           focusedBorder:OutlineInputBorder(
                             borderSide: const BorderSide(color: Colors.transparent, width: 2.0),
                             borderRadius: BorderRadius.circular(15.0),
                           ),
                           hintText: 'Bank Name',
                           hintStyle: TextStyle(fontWeight: FontWeight.bold,
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
                   //LOAN AMOUNT
                   Container(
                       padding: EdgeInsets.symmetric(horizontal: 15),
                       width: MediaQuery.of(context).size.width,
                       alignment: Alignment.centerLeft,
                       child: Text("Loan Amount",style:
                       TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 18,
                           color: Colors.grey),)),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: TextField(
                       keyboardType: TextInputType.number,
                       textAlign: TextAlign.start,
                       style: TextStyle(fontWeight: FontWeight.bold,
                           color: Colors.black),
                       decoration: InputDecoration(
                         focusedBorder:OutlineInputBorder(
                           borderSide: const BorderSide(color: Colors.transparent, width: 2.0),
                           borderRadius: BorderRadius.circular(15.0),
                         ),
                         hintText: '1,00,000,00',
                         hintStyle: TextStyle(fontWeight: FontWeight.bold,
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
                   //ROI
                   Container(
                       padding: EdgeInsets.symmetric(horizontal: 15),
                       width: MediaQuery.of(context).size.width,
                       alignment: Alignment.centerLeft,
                       child: Text("ROI",style:
                       TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 18,
                           color: Colors.grey),)),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: TextField(
                       textAlign: TextAlign.start,
                       style: TextStyle(fontWeight: FontWeight.bold,
                           color: Colors.black),
                       decoration: InputDecoration(
                         focusedBorder:OutlineInputBorder(
                           borderSide: const BorderSide(color: Colors.transparent, width: 2.0),
                           borderRadius: BorderRadius.circular(15.0),
                         ),
                         hintText: '20%',
                         hintStyle: TextStyle(fontWeight: FontWeight.bold,
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
                           fontWeight: FontWeight.bold,
                           fontSize: 18,
                           color: Colors.grey),)),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: TextField(
                       textAlign: TextAlign.start,
                       style: TextStyle(fontWeight: FontWeight.bold,
                           color: Colors.black),
                       decoration: InputDecoration(
                         focusedBorder:OutlineInputBorder(
                           borderSide: const BorderSide(color: Colors.transparent, width: 2.0),
                           borderRadius: BorderRadius.circular(15.0),
                         ),
                         hintText: '80 months',
                         hintStyle: TextStyle(fontWeight: FontWeight.bold,
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
                   //EMI
                   Container(
                       padding: EdgeInsets.symmetric(horizontal: 15),
                       width: MediaQuery.of(context).size.width,
                       alignment: Alignment.centerLeft,
                       child: Text("EMI",style:
                       TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 18,
                           color: Colors.grey),)),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: TextField(
                       keyboardType: TextInputType.phone,
                       textAlign: TextAlign.start,
                       style: TextStyle(fontWeight: FontWeight.bold,
                           color: Colors.black),
                       decoration: InputDecoration(
                         focusedBorder:OutlineInputBorder(
                           borderSide: const BorderSide(color: Colors.transparent, width: 2.0),
                           borderRadius: BorderRadius.circular(15.0),
                         ),
                         hintText: '60,000',
                         hintStyle: TextStyle(fontWeight: FontWeight.bold,
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
                           Navigator.push(context,
                               MaterialPageRoute(builder:
                                   (context) =>
                                   InstantLoan()
                               )
                           );
                         },
                         style: ButtonStyle(
                           backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF0076CE)),
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
                             color: Colors.white,
                         ),
                         )
                     ),
                   ),
                 ],
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