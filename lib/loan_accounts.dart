import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loans_accounts extends StatefulWidget {  @override
  State<loans_accounts> createState() => _loans_accountsState();
}

class _loans_accountsState extends State<loans_accounts> {

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    // Handle item selection here, e.g., navigate to different screens.
    // In this example, we just update the selected index.
    _selectedIndex = index;
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
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF101218),
                Color(0xFF525861),
                Colors.grey
              ],
            )),
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
                          primary: Color(0xFF000000), // Set the background color to grey
                          onPrimary: Colors.white, // Set the text color to white
                          elevation: 4, // Set the elevation (shadow)
                          minimumSize: Size(150, 50), // Set the button's minimum size
                        ),
                        child: Text('Active Loans (5)')),
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
          )],
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
