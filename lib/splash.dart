
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lone/application1.dart';
import 'package:lone/instant_loan.dart';

import 'otp.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.push(context,
            MaterialPageRoute(builder:
                (context) =>
                Application1()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Colors.black,

    ),
            child: Image.asset('assets/logo.png'),
    );
  }
}
