import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loan_accounts2 extends StatefulWidget{
  @override
  State<loan_accounts2> createState() => _loan_accounts2State();
}

class _loan_accounts2State extends State<loan_accounts2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        iconTheme:  IconThemeData(color: Colors.white),
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
    decoration: const BoxDecoration(color: Color(0xFF23303E)
    ),
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
                          backgroundColor: Colors.white, // Set the text color to white
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
          Container(height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
                itemCount: 5,
                itemBuilder: (BuildContext context,int index){
              return Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),

                  gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: [
                  Color(0xFF101218),
                  Color(0xFF525861),
                  ]),// Adjust the radius for rounded corners
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Loan Type',
                            style: TextStyle(fontSize: 12.0,color: Colors.white),
                          ),
                          Spacer(), // Add space between the Text widgets
                          Text(
                            'Housing Loan 1',
                            style: TextStyle(fontSize: 12.0,color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Loan Amount',
                            style: TextStyle(fontSize: 12.0,color: Colors.white),
                          ),
                          Spacer(), // Add space between the Text widgets
                          Text(
                            '₹ 50,00,000',
                            style: TextStyle(fontSize: 12.0,color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'EMI',
                            style: TextStyle(fontSize: 12.0,color: Colors.white),
                          ),
                          Spacer(), // Add space between the Text widgets
                          Text(
                            '₹ 50,173',
                            style: TextStyle(fontSize: 12.0,color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Interest Rate',
                            style: TextStyle(fontSize: 12.0,color: Colors.white),
                          ),
                          Spacer(), // Add space between the Text widgets
                          Text(
                            '21%',
                            style: TextStyle(fontSize: 12.0,color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Loan Tenure',
                            style: TextStyle(fontSize: 12.0,color: Colors.white),
                          ),
                          Spacer(), // Add space between the Text widgets
                          Text(
                            '180 months',
                            style: TextStyle(fontSize: 12.0,color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'ROI',
                            style: TextStyle(fontSize: 12.0,color: Colors.white),
                          ),
                          Spacer(), // Add space between the Text widgets
                          Text(
                            'TBC',
                            style: TextStyle(fontSize: 12.0,color: Colors.white),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              );
            }),
          ),],

        ),
      ),

    )

    );
  }
}