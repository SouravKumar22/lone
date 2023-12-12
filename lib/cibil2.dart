import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lone/instant_loan.dart';
import 'package:lone/loanOffers.dart';
import 'package:lone/loan_accounts2.dart';
import 'package:lone/profile.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import 'loan_accounts.dart';
import 'otp.dart';

class cibil2 extends StatefulWidget{
  @override
  State<cibil2> createState() => _cibil2State();
}

class _cibil2State extends State<cibil2> {
  double progressValue=802;
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    // Handle item selection here, e.g., navigate to different screens.
    // In this example, we just update the selected index.

    setState(() {
      _selectedIndex=index;
      if(_selectedIndex ==0){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>cibil2()));
      }else if(_selectedIndex ==1){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>loan_accounts2()));
      }else if(_selectedIndex ==2){
        // Navigator.push(context, MaterialPageRoute(builder: (context)=>cibil2()));
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(context),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xFF343B44),
        leadingWidth: 25,
        elevation: 0,
        title: Image.asset('assets/logo.png',
        scale: 3,),
      ),
        body:Container(
          height: MediaQuery.of(context).size.height,
          // alignment: Alignment.center,
          decoration: const BoxDecoration(
              color: Colors.black
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  width:MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Color(0xFF343B44),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                  ),

                child: Text('Your Credit Report', style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  fontFamily:'Cirka',),
                ),),
              Padding(
                padding: const EdgeInsets.only(top: 20.0,left: 20.0),
                child: Text('CREDIT Score',style: TextStyle(
                  letterSpacing: 0.5,
                  color: Colors.white,
                  fontSize: 18,
                    fontFamily:'Cirka',
                  fontWeight: FontWeight.bold
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width-10,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.grey),
                child: Stack(
                  children: [
                    SfRadialGauge(axes: <RadialAxis>[
                      RadialAxis(
                        radiusFactor: 0.6,
                        minimum: 0,
                        maximum: 900,
                        showLabels: false,
                        showTicks: false,
                        axisLineStyle: const AxisLineStyle(
                          thickness: 0.12,
                          cornerStyle: CornerStyle.bothCurve,
                          color: Colors.white,
                          thicknessUnit: GaugeSizeUnit.factor,
                        ),
                        pointers: <GaugePointer>[
                          RangePointer(
                              value: progressValue,
                              cornerStyle: CornerStyle.bothCurve,
                              width: 0.12,
                              color: Colors.indigo,
                              sizeUnit: GaugeSizeUnit.factor,
                              )
                          ],
                        annotations: <GaugeAnnotation>[
                          GaugeAnnotation(
                              positionFactor: 0.0,
                              angle: 90,
                              widget: Text(
                                  progressValue.toStringAsFixed(0),
                                  style: TextStyle(fontSize:42,
                                      fontFamily:'Cirka',
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF001FA1)),
                                  ))
                        ])
                      ]),
                  Positioned(
                    bottom: 50,
                    left: MediaQuery.of(context).size.width/2-40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Good',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF001FA1),
                               fontWeight: FontWeight.bold,
                              //   fontFamily:'Cirka',
                              fontSize: 18
                            ),
                          ),
                        ),

                        /*Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            'Updated on 29 Nov 2023',
                            style: TextStyle(
                              color: Colors.black,
                              // fontWeight: FontWeight.bold,
                              fontSize: 12,
                              // fontFamily:'Cirka',
                              letterSpacing: 0, // Negative letter spacing for thin font
                            ),
                          ),
                        ),*/
                      ],
                    ),
                  )],
                ),
                    )
              ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8),
                      width: MediaQuery.of(context).size.width-10,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),

                   child:Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(10.0),
                         child: Text('Summary',
                         style: TextStyle(
                           color: Colors.grey,
                           fontSize: 20,
                           fontFamily:'Cirka',
                           fontWeight: FontWeight.bold,
                         ),),
                       ),

                     GestureDetector(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>loan_accounts()));
                       },
                       child: Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 10.0),
                             child: Text('Active Loans',
                             style: TextStyle(
                               color: Colors.black,
                               fontSize: 14,
                               // fontFamily:'Cirka',
                               // fontWeight: FontWeight.bold,
                             ),),
                           ),
                         Spacer(),
                         Text('5',
                         style: TextStyle(
                           fontSize: 14,
                           color: Colors.black,
                           // fontWeight: FontWeight.bold,
                           // fontFamily:'Cirka',
                         ),),
                         Icon(Icons.keyboard_arrow_right_outlined,
                         color: Colors.black,)],
                       ),
                     ),
                     Divider(
                       color: Colors.grey,
                     ),
                       Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 10.0),
                             child: Text('Total Loan',
                               style: TextStyle(
                                 color: Colors.black,
                                 fontSize: 14,
                                 // fontWeight: FontWeight.bold,
                                 // fontFamily:'Cirka',
                               ),),
                           ),
                           Spacer(),
                           Text('₹8,80,000  ',
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
                             child: Text('Total EMI',
                               style: TextStyle(
                                 color: Colors.black,
                                 // fontWeight: FontWeight.bold,
                                 // fontFamily:'Cirka',
                                 fontSize: 14,
                               ),),
                           ),
                           Spacer(),
                           Text('2 months',
                             style: TextStyle(
                                 // fontFamily:'Cirka',
                                 fontSize: 14,
                                 color: Colors.white
                             ),),
                           Icon(Icons.keyboard_arrow_right_outlined,
                             color: Colors.black,)],
                       ),
                       ],
                   ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("Now you can save up to 45% on your current EMI i.e. from ₹1,00,000 to ₹55,000",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    //fontFamily:'Cirka',
                    fontSize: 18,
                    //fontWeight: FontWeight.bold,
                  ),),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 65,
                  margin: EdgeInsets.all(8),
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoanOffers()));
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0), // Adjust the radius as needed
                          ),
                        ),),
                      child:  const Row(mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('APPLY FOR LOAN  ',style: TextStyle(fontSize: 20.0,color: Color(0xFF001FA1) ),),
                          Icon(Icons.arrow_forward_rounded,size: 20,
                            color: Color(0xFF001FA1),)
                        ],
                      )),
                ),
              ],
            ),
          )
        ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.clean_hands_outlined),
            label: 'MY LOANS',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.speed_outlined),
            label: 'CIBIL SCORE',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        unselectedLabelStyle: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
            fontFamily:'Cirka',
            color: Colors.white,
        ),
        selectedLabelStyle: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
            fontFamily:'Cirka',
            color: Colors.white
        ),
        backgroundColor: Color(0xFF1E2331), // Background color of the navigation bar
        selectedItemColor: Colors.white, // Item color when selected
        unselectedItemColor: Colors.white.withOpacity(0.6), // Item color when unselected

      ),
    );
  }
}

Widget MyDrawer (BuildContext context){
    return Drawer(
        backgroundColor: Color(0xFF343B44),
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
         Column(
           children: [
             Padding(
               padding: const EdgeInsets.only(top: 50.0),
               child: Image.asset('assets/logo.png', scale: 2,),
             ),
             Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(top: 50.0, left: 30, bottom: 30),
                   child: Text('Welcome,  Aneesh',style: TextStyle(
                       // fontFamily:'Cirka',
                       // fontWeight: FontWeight.bold,
                       color: Colors.white
                   ),),
                 ),
               ],
             ),
           ],
         ),
        ListTile(
          leading: Icon(Icons.person_outline_rounded,color: Colors.white,),
          title: Text('My Profile',style: TextStyle(
              // fontFamily:'Cirka',
              // fontWeight: FontWeight.bold,
            color: Colors.white
          ),),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>profile()));
          },
        ),
        ListTile(
          leading: Icon(Icons.clean_hands_rounded,color: Colors.white,),
          title: Text('My Loans',style: TextStyle(
            // fontWeight: FontWeight.bold,
            //   fontFamily:'Cirka',
              color: Colors.white
          ),),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>loan_accounts2()));
            },
        ),
        ListTile(
          leading: Icon(Icons.calculate,color: Colors.white,),
          title: Text('EMI Calculator',style: TextStyle(
            // fontWeight: FontWeight.bold,
            //   fontFamily:'Cirka',
              color: Colors.white
          ),),
          onTap: () {
            // Handle the logout tap action
            Navigator.pop(context);
          },
        ),
        SizedBox(height: 50,),

        /*ListTile(
          title: Text('Latest Updates',style: TextStyle(
            fontWeight: FontWeight.bold,
              fontFamily:'Cirka',
              color: Colors.white
          ),),
          onTap: () {
            // Handle the logout tap action
            Navigator.pop(context);
          },
        ),*/

        /*ListTile(
          title: Text('Privacy Policy',style: TextStyle(
              fontFamily:'Cirka',
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),),
          onTap: () {
            // Handle the logout tap action
            Navigator.pop(context);
          },
        ),*/

        ListTile(
          leading: Icon(Icons.star_rate_outlined,color: Colors.white,),
          title: Text('Rate Us',style: TextStyle(
              // fontFamily:'Cirka',
              // fontWeight: FontWeight.bold,
              color: Colors.white
          ),),
          onTap: () {
            // Handle the logout tap action
            Navigator.pop(context);
          },
        ),

        ListTile(
          leading: Icon(Icons.share_outlined,color: Colors.white,),
          title: Text('Share',style: TextStyle(
              // fontFamily:'Cirka',
              // fontWeight: FontWeight.bold,
              color: Colors.white
          ),),
          onTap: () {
            // Handle the logout tap action
            Navigator.pop(context);
          },
        ),

        ListTile(
          leading: Icon(Icons.exit_to_app,color: Colors.white,),
          title: Text('Logout',style: TextStyle(
              // fontFamily:'Cirka',
              // fontWeight: FontWeight.bold,
              color: Colors.white
          ),),
          onTap: () {
            // Handle the logout tap action
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Otp()));
          },
        ),
      ],
    ),
        );
  }