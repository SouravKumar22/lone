import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cibil2.dart';
import 'loan_accounts2.dart';

class loan_accounts extends StatefulWidget {  @override
  State<loan_accounts> createState() => _loan_accountsState();
}

class _loan_accountsState extends State<loan_accounts> {

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
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Icon(Icons.arrow_back_sharp,
          color: Colors.white,),
        ),
        backgroundColor: Color(0xFF343B44),
        leadingWidth: 25,
        elevation: 0,
        title: Text('Loan Accounts',
        style: TextStyle(
          fontSize: 17,
          color: Colors.white
        ),),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        // alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Color(0xFF23303E),),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(onPressed: () {

                      },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,// Set the text color to white
                            elevation: 4, // Set the elevation (shadow)
                            minimumSize: Size(150, 50), // Set the button's minimum size
                          ),
                          child: Text('Active Loans (5)',style: TextStyle(
                              color: Colors.black
                          ),)),
                    ),

                    ElevatedButton(onPressed: () {

                    },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF000000), // Set the background color to grey
                          onPrimary: Colors.white, // Set the text color to white
                          elevation: 4, // Set the elevation (shadow)
                          minimumSize: Size(150, 50), // Set the button's minimum size
                        ),
                        child: Text('Cleared Loans (0)')),

                   ],),
              ),
            Padding(
              padding: const EdgeInsets.only(left:10.0),
              child: Text('Updated on 29 Nov 2023',style: TextStyle(
                fontSize: 12.0,
                color: Color(0xFFF3F3F3)
              ),),
            ),
              Container(height: MediaQuery.of(context).size.height-100,
                child: ListView.builder(
                  itemCount: 5, // Number of items in the list
                  itemBuilder: (BuildContext context, int index) {
                    // This function generates each item in the list
                    return Container(
                      height: 120,
                      margin: EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          gradient: LinearGradient(
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft,
                            colors: [
                              Color(0xFF101218),
                              Color(0xFF525861),
                            ],
                          )),
                      child: ListTile(
                        leading: Container(
                            width: 50,
                            alignment:Alignment.topCenter,child: Icon(Icons.clean_hands_outlined,
                        color: Colors.white,)),
                        title: Row(
                          children: [
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Text('Personal Loan',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                  ),),
                                ),
                                Text('ADITYA BIRLA F L',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10
                                  ),),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text("₹ 85,000",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white
                                    ),),
                                ),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 29),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '9 months ',
                                    style: TextStyle(fontSize: 10,
                                        color: Colors.white),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    'Due on ',
                                    style: TextStyle(fontSize: 12,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    '05 May',
                                    style: TextStyle(fontSize: 12,
                                        color: Colors.white),
                                  ),
                                  ElevatedButton(onPressed: () {

                                  },
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(9.0), // Adjust the radius as needed
                                        ),
                                        backgroundColor: Colors.green,
                                        // Set the text color to white
                                        // elevation: 4, // Set the elevation (shadow)// Set the button's minimum size
                                         minimumSize: Size(60, 30)

                                      ),
                                      child: Row(children: [Text('Active ',style: TextStyle(color: Colors.white,fontSize: 12),),Icon(Icons.arrow_forward_ios_rounded,size: 10,color: Colors.white,)])), // Add spacing between button and icon
                                ],
                              ),
                            ),
                          ],
                        ),
                        onTap: () {
                          // Action when an item is tapped
                          print('Tapped on Item $index');
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
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

  }}
