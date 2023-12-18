import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cibil2.dart';

class profile extends StatefulWidget{
  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    // Handle item selection here, e.g., navigate to different screens.
    // In this example, we just update the selected index.
    _selectedIndex = index;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
    appBar: AppBar(
     iconTheme:  IconThemeData(color: Colors.white),
      backgroundColor: Color(0xFF343B44),
      leadingWidth: 25,
      elevation: 0,
      title: Text('My Profile',
        style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
            fontFamily:'Cirka',
            color: Colors.white
        ),),
    ),
    body:Container(
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
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
            Padding(
              padding: EdgeInsets.only(top:30.0,left: 20),
              child: Text('Name',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.white,
                  fontSize: 16,
                ),
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintStyle: TextStyle(color:
                  Colors.white,
                      fontSize: 16.0),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white,width: 2), // Customize border color
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white,width: 2), // Customize focused border color
                  ),
                  hintText: 'Ashneer Chowdary',
                  filled: true,
                  fillColor: Colors.transparent,
                  // suffixIcon: IconButton(
                  //   onPressed: () {  }, icon: Icon(Icons.mode_edit_outlined),
                  // ),
                  suffixIconColor:Colors.white, // Background color
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:10.0,left: 20),
              child: Text('Email',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white,width: 2), // Customize border color
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white,width: 2), // Customize focused border color
                  ),
                  hintStyle: TextStyle(color:
                  Colors.white,
                      fontSize: 16.0),
                  hintText: 'ashneerchowdary@gmail.com',
                  filled: true,
                  fillColor: Colors.transparent,
                 /* suffixIcon: IconButton(
                    onPressed: () {  }, icon: Icon(Icons.mode_edit_outlined),
                  ),*/
                  suffixIconColor:Colors.white, // Background color
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:10.0,left: 20),
              child: Text('Phone',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white,width: 2), // Customize border color
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white,width: 2), // Customize focused border color
                  ),
                  hintStyle: TextStyle(color:
                  Colors.white,
                      fontSize: 16.0),
                  hintText: '+91 0123456789',
                  filled: true,
                  fillColor: Colors.transparent,
                  /*suffixIcon: IconButton(
                    onPressed: () {  }, icon: Icon(Icons.mode_edit_outlined),
                  ),*/
                  suffixIconColor:Colors.white,
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white, // Customize the color of the underline
                      width: 4.0, // Customize the thickness of the underline
                    ),
                  ),// Background color
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:10.0,left: 20),
              child: Text('Date of Birth',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.white
                ),
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white,width: 2), // Customize border color
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white,width: 2), // Customize focused border color
                  ),
                  hintStyle: TextStyle(color:
                  Colors.white,
                      fontSize: 16.0),
                  hintText: '01 Jan 2000',
                  filled: true,
                  fillColor: Colors.transparent,
                 /* suffixIcon: IconButton(
                    onPressed: () {  }, icon: Icon(Icons.mode_edit_outlined),
                  ),*/
                  suffixIconColor:Colors.white, // Background color
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:10.0,left: 20),
              child: Text('Gender',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white
                ),
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white,width: 2), // Customize border color
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white,width: 2), // Customize focused border color
                  ),
                  hintStyle: TextStyle(color:
                  Colors.white,
                      fontSize: 16.0),
                  hintText: 'Male',
                  filled: true,
                  fillColor: Colors.transparent,
                  /*suffixIcon: IconButton(
                    onPressed: () {  }, icon: Icon(Icons.mode_edit_outlined),
                  ),*/
                  suffixIconColor:Colors.white, // Background color
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:10.0,left: 20),
              child: Text('PAN Number',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white
                ),
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white,width: 2), // Customize border color
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white,width: 2), // Customize focused border color
                  ),
                  hintStyle: TextStyle(color:
                  Colors.white,
                      fontSize: 16.0),
                  hintText: 'ABCD1234N',
                  filled: true,
                  fillColor: Colors.transparent,
                  /*suffixIcon: IconButton(
                    onPressed: () {  }, icon: Icon(Icons.mode_edit_outlined),
                  ),*/
                  suffixIconColor:Colors.white,
                  // Background color
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:10.0,left: 20),
              child: Text('Aadhaar Number',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(textAlign: TextAlign.left,

                style: TextStyle(
                    color: Colors.white,
                ),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white,width: 2), // Customize border color
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white,width: 2), // Customize focused border color
                  ),
                  hintStyle: TextStyle(color:
                  Colors.white,
                      fontSize: 16.0),
                  hintText: '1234-5678-9012-3456',
                  filled: true,
                  fillColor: Colors.transparent,
                  /*suffixIcon: IconButton(
                    onPressed: () {  }, icon: Icon(Icons.mode_edit_outlined),
                  ),*/
                  suffixIconColor:Colors.white,
                  // Background color
                ),
              ),
            ),],
        ),
      ),
    ),
      bottomNavigationBar: bottomBar(context,0),

    );
  }
}