import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lone/instant_loan.dart';
import 'package:lone/loan_accounts2.dart';
import 'package:lone/profile.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import 'loan_accounts.dart';

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
        title: Image.asset('assets/splash.png',
        scale: 5,),
      ),
        body:Container(
          height: MediaQuery.of(context).size.height,
          // alignment: Alignment.center,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF101218),
                  Color(0xFF525861),
                  Colors.grey
                ],
              )),
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

                child: Text('Your Cibil Report', style: TextStyle(color:
                Colors.white,fontSize: 30),
                ),),
              Padding(
                padding: const EdgeInsets.only(top: 20.0,left: 20.0),
                child: Text('CIBIL Score',style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
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
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF101218),
                          Color(0xFF343B44),
                        ],
                      )),
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
                              color: Colors.green,
                              sizeUnit: GaugeSizeUnit.factor,
                              )
                          ],
                        annotations: <GaugeAnnotation>[
                          GaugeAnnotation(
                              positionFactor: 0.0,
                              angle: 90,
                              widget: Text(
                                  progressValue.toStringAsFixed(0),
                                  style: TextStyle(fontSize:40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                                  ))
                        ])
                      ]),
                  Positioned(
                    bottom: 5,
                    left: MediaQuery.of(context).size.width/3-15,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Good',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),
                          ),
                        ),
                        Image.asset('assets/cibil.png',
                        width: 61,
                        height: 25,),

                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            'Updated on 29 Nov 2023',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                              letterSpacing: 0, // Negative letter spacing for thin font
                            ),
                          ),
                        ),
                      ],
                    ),
                  )],
                ),
                    )
              ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0,left: 20.0),
                  child: Text('CIBIL Report Summary',style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                      width: MediaQuery.of(context).size.width-10,
                      decoration: const BoxDecoration(
                        color: Color(0xFF343B44),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),

                   child:Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(10.0),
                         child: Text('Summary',
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 18,
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
                               color: Colors.white,
                               fontSize: 14,
                             ),),
                           ),
                         Spacer(),
                         Text('5',
                         style: TextStyle(
                           fontSize: 14,
                           color: Colors.white
                         ),),
                         Icon(Icons.keyboard_arrow_right_outlined,
                         color: Colors.white,)],
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
                                 color: Colors.white,
                                 fontSize: 14,
                               ),),
                           ),
                           Spacer(),
                           Text('₹8,80,000  ',
                             style: TextStyle(
                                 fontSize: 14,
                                 color: Colors.white
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
                             child: Text('Age of Accounts',
                               style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 14,
                               ),),
                           ),
                           Spacer(),
                           Text('5 years  ',
                             style: TextStyle(
                                 fontSize: 14,
                                 color: Colors.white
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
                             child: Text('Recent Enquires',
                               style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 14,
                               ),),
                           ),
                           Spacer(),
                           Text('2 months',
                             style: TextStyle(
                                 fontSize: 14,
                                 color: Colors.white
                             ),),
                           Icon(Icons.keyboard_arrow_right_outlined,
                             color: Colors.white,)],
                       ),
                       ],
                   ),
                  ),
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
        backgroundColor: Color(0xFF1E2331), // Background color of the navigation bar
        selectedItemColor: Colors.white, // Item color when selected
        unselectedItemColor: Colors.white.withOpacity(0.6), // Item color when unselected

      ),
    );
  }
}

Widget MyDrawer (BuildContext context){
    return Drawer(
        backgroundColor: Color(0xFF101218),
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
         Row(
           children: [
             Container(
               padding: const EdgeInsets.symmetric(vertical: 50.0,horizontal: 20),
               child: CircleAvatar(
                 radius: 40,
                 backgroundImage: AssetImage('assets/avatar.png',), // Replace with your avatar image
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text('Welcome,  Aneesh',style: TextStyle(
                   color: Colors.white
               ),),
             ),
           ],
         ),
        ListTile(
          leading: Icon(Icons.person_outline_rounded,color: Colors.white,),
          title: Text('My Profile',style: TextStyle(
            color: Colors.white
          ),),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>profile()));
          },
        ),
        ListTile(
          leading: Icon(Icons.clean_hands_rounded,color: Colors.white,),
          title: Text('My Loans',style: TextStyle(
              color: Colors.white
          ),),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>loan_accounts2()));
            },
        ),
        ListTile(
          leading: Icon(Icons.public_rounded,color: Colors.white,),
          title: Text('Choose Language',style: TextStyle(
              color: Colors.white
          ),),
          onTap: () {

          },
        ),
        ListTile(
          leading: Icon(Icons.calculate,color: Colors.white,),
          title: Text('EMI Calculator',style: TextStyle(
              color: Colors.white
          ),),
          onTap: () {
            // Handle the logout tap action
            Navigator.pop(context);
          },
        ),
        SizedBox(height: 50,),

        ListTile(
          title: Text('Latest Updates',style: TextStyle(
              color: Colors.white
          ),),
          onTap: () {
            // Handle the logout tap action
            Navigator.pop(context);
          },
        ),

        ListTile(
          title: Text('Privacy Policy',style: TextStyle(
              color: Colors.white
          ),),
          onTap: () {
            // Handle the logout tap action
            Navigator.pop(context);
          },
        ),

        ListTile(
          title: Text('Rate Us',style: TextStyle(
              color: Colors.white
          ),),
          onTap: () {
            // Handle the logout tap action
            Navigator.pop(context);
          },
        ),

        ListTile(
          title: Text('Share',style: TextStyle(
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
              color: Colors.white
          ),),
          onTap: () {
            // Handle the logout tap action
            Navigator.pop(context);
          },
        ),
      ],
    ),
        );
  }