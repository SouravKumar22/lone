import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'otp.dart';

class InstantLoan extends StatefulWidget{
  @override
  State<InstantLoan> createState() => _InstantLoanState();
}

class _InstantLoanState extends State<InstantLoan> {

  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  final List<String> imageUrls = [
    'assets/img1.png','assets/img2.png','assets/img3.png',
  ];
  final List<String> heading = [
    'Get Instant Loan','Simple KYC Process','Check Free Credit Score',
  ];
  final List<String> messageText = [
    'Want urgent money? No worries. You will get every type of Loans with 1Lone.','Just fill your basic information, Upload Pan Card, and check your eligibility.','Check instantly your Credit Score and approved limit based on it.',
  ];

  var index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF101218),
                  Color(0xFF525861),
                  Colors.grey
                ],
              )
          ),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerRight,
              margin: EdgeInsets.only(top:30,right: 20),
              child: GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Otp()));
                },
                  child: Text("Skip",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16,),)),),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width,
                child: PageView.builder(
                  controller: controller,
                  pageSnapping: false,
                  padEnds: true,
                  allowImplicitScrolling: false,
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, imageIndex) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      height: 400,
                      child: Image.asset(imageUrls[imageIndex],scale: imageIndex==2?2:1,
                      ),
                    );},
                ),),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: SmoothPageIndicator(
                  controller: controller,  // PageController
                  count:  3,
                  effect:  const ExpandingDotsEffect(
                    dotHeight: 7, dotWidth: 7,
            ))),
          ),
              // const Spacer(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),   // Adjust the radius as needed
                  topRight: Radius.circular(20.0),  // Adjust the radius as needed
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF101218),
                    Color(0xFF343B44),
                  ],
                ),),
              child: Center(
                child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 30.0,left: 20,right:20),
                        child: Text( heading[index%3],
                          style: const TextStyle(
                              fontFamily: 'Cirka',
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0, // Adjust the font size as needed
                            color: Colors.white,
                            letterSpacing: 2// Adjust the color as needed
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 40.0,left: 15,right: 15),
                        child: Text(messageText[index%3],
                          textAlign:TextAlign.center,style:  TextStyle(
                            /*fontFamily: 'Cirka',
                            fontWeight: FontWeight.bold,*/
                            letterSpacing: 0.6,
                            fontSize: 16.0, // Adjust the font size as needed
                            color: Colors.grey, // Adjust the color as needed
                          ),
                        ),
                      ),
              Container(
                height: 55,
                margin: EdgeInsets.all(30),
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                  onPressed: (){
                    setState(() {
                      index++;
                      if(index==3) {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Otp()));
                      }
                      controller.jumpToPage(index);
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF0076CE)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
                      ),
                    ),),
                  child:  const Row(mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Next',
                        style: TextStyle(
                          letterSpacing: 1,
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      /*Padding(
                        padding: EdgeInsets.only(left: 8.0, top: 5),
                        child: Icon(Icons.arrow_forward_rounded,
                        color: Colors.white,),
                      )*/
                    ],
                  )),
              )
                    ],
                  ),
                ),
              ),
            ]),
        ),
      )

    );
  }
}