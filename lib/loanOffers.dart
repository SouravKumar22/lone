import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lone/instant_loan.dart';
import 'package:lone/loan_accounts2.dart';
import 'package:lone/profile.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import 'loan_accounts.dart';

class LoanOffers extends StatefulWidget{
  @override
  State<LoanOffers> createState() => _LoanOffersState();
}

class _LoanOffersState extends State<LoanOffers> {
  double progressValue=802;
  int _selectedIndex = 0;


  List imgURL = ["assets/sbi.png","assets/hdfc.png","assets/axis.png","assets/idbi.png",];
  List loanAmount=["35,00,000","15,00,000","50,00,000","4,00,000"];
  List roi=["20%","20%","20%","12%"];
  List tenure=["80 mos","60 mos","80 mos","48 mos"];
  List emi=["50,000","25,173","55,000","25,173"];
  List checkList=[true,false,false,false];

  void _onItemTapped(int index) {
    // Handle item selection here, e.g., navigate to different screens.
    // In this example, we just update the selected index.

    setState(() {
      _selectedIndex=index;
      if(_selectedIndex ==0){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoanOffers()));
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
      body:Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF101218),
                Color(0xFF343B44)
              ],
            )),
        child: Stack(
          children: [
            /*Positioned(
              bottom: 10,left: -50,
              child: Image.asset("assets/design.png",scale: 3.5,),
            ),*/
            Container(
                height: MediaQuery.of(context).size.height,
                // alignment: Alignment.center,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 40,bottom: 10,left: 20,right: 20),
                        width:MediaQuery.of(context).size.width,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Color(0xFF343B44),
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
                                child: Icon(Icons.arrow_back,color: Colors.white,)),
                            Text("   Back",style: TextStyle(
                                fontFamily:'Cirka',
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),),
                            Spacer(),
                            Image.asset('assets/logo.png', scale: 3,),
                          ],
                        ),
                        ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0,bottom: 5),
                        child: Center(
                          child: Text('Loan Offers',
                            style: TextStyle(
                              letterSpacing: 0.5,
                                decoration: TextDecoration.underline,
                              color: Colors.white,
                                fontFamily:'Cirka',
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Center(
                          child: Text('(Subject to Approval)',
                            style: TextStyle(
                              letterSpacing: 0.5,
                                fontFamily:'Cirka',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18
                          ),),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(left:15,right: 15),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10.0),
                            ),
                          ),
                        child: Table(
                          defaultVerticalAlignment:TableCellVerticalAlignment.middle,
                          columnWidths: {
                            0: FixedColumnWidth(100.0),// fixed to 100 width
                            1: FixedColumnWidth(80),
                            2: FixedColumnWidth(60.0),//fixed to 100 width
                            3: FixedColumnWidth(70.0),//fixed to 100 width
                            4: FixedColumnWidth(70.0),//fixed to 100 width
                          },
                          border: TableBorder.all(color: Colors.grey.shade600,borderRadius: BorderRadius.all(Radius.circular(10))),
                          children: [
                            TableRow(
                              children: [
                                TableCell(child: Center(child: Text('Bank',
                                style: TextStyle(
                                  // fontFamily:'Cirka',
                                  // fontWeight: FontWeight.bold,
                                ),))),
                                TableCell(child: Center(child: Text('Loan\nAmount',
                                  style: TextStyle(
                                    // fontFamily:'Cirka',
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ))),
                                TableCell(child: Center(child: Text('ROI',
                                  style: TextStyle(
                                    // fontFamily:'Cirka',
                                    // fontWeight: FontWeight.bold,
                                  ),))),
                                TableCell(child: Center(child: Text('Tenure',
                                  style: TextStyle(
                                    // fontFamily:'Cirka',
                                    // fontWeight: FontWeight.bold,
                                  ),))),
                                TableCell(child: Center(child: Text('EMI',
                                  style: TextStyle(
                                    // fontFamily:'Cirka',
                                    // fontWeight: FontWeight.bold,
                                  ),))),
                              ],
                            ),
                            for(int i=0;i<imgURL.length;i++)
                                TableRow(

                                children: [
                                  TableCell(verticalAlignment: TableCellVerticalAlignment.bottom,
                                      child: Center(child: Row(
                                    children: [
                                      Checkbox(
                                        activeColor: Colors.black,
                                          checkColor: Colors.white,
                                          value: checkList[i], onChanged: (val){
                                        setState(() {
                                          checkList[i]=val!;
                                        });

                                      }),
                                      Image.asset(imgURL[i], scale:4),
                                    ],
                                  ))),
                                  TableCell(child: Center(child: Text(loanAmount[i],
                                    style: TextStyle(
                                      // fontFamily:'Cirka',
                                      // fontWeight: FontWeight.bold,
                                    ),))),
                                  TableCell(child: Center(child: Text(roi[i],
                                    style: TextStyle(
                                      // fontFamily:'Cirka',
                                      // fontWeight: FontWeight.bold,
                                    ),))),
                                  TableCell(child: Center(child: Text(tenure[i],
                                    style: TextStyle(
                                      // fontFamily:'Cirka',
                                      // fontWeight: FontWeight.bold,
                                    ),))),
                                  TableCell(child: Center(child: Text(emi[i],
                                    style: TextStyle(
                                      // fontFamily:'Cirka',
                                      // fontWeight: FontWeight.bold,
                                    ),))),
                                ],
                              ),
                            TableRow(
                              children: [
                                TableCell(child: Container(height: 40,)),
                                TableCell(child: Container(height: 40,)),
                                TableCell(child: Container(height: 40,)),
                                TableCell(child: Container(height: 40,)),
                                TableCell(child: Container(height: 40,)),


                              ],
                            ),
                          ],
                        ),
                      ),

                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 65,
                        margin: EdgeInsets.only(left: 10,right: 10,top: 15,bottom: 30),
                        padding: const EdgeInsets.all(10.0),
                        child: ElevatedButton(
                            onPressed: (){
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0), // Adjust the radius as needed
                                ),
                              ),),
                            child:  Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Container(
                                    height: 30,
                                      child: Image.asset("assets/emiHand.png",)),
                                ),
                                Text('   EMI Calculator ',style: TextStyle(fontSize: 16.0,color: Color(0xFF001FA1) ),),
                              ],
                            )),
                      ),

                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 65,
                        margin: EdgeInsets.all(8),
                        padding: const EdgeInsets.all(10.0),
                        child: ElevatedButton(
                            onPressed: (){
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0), // Adjust the radius as needed
                                ),
                              ),),
                            child:  Text('Consolidate Now',style: TextStyle(fontSize: 16.0,color: Color(0xFF001FA1) ),)),
                      ),
                    ],
                  ),
                )
            ),
          ],
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
  }
}
