import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hasseb_project/ui_design/second_splash_screen.dart';
import 'package:hasseb_project/view_model/services/splash_services.dart';
class FirstSplashScreen extends StatefulWidget {
  const FirstSplashScreen({super.key});

  @override
  State<FirstSplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<FirstSplashScreen> {

  //SplashServices services=SplashServices();
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds:3),()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>SecondSplashScreen())));
   // services.isLogin(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SafeArea(child: Container(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(

                  height: 100,
                width: 100,
              //   color: Color(0XFFFFC38C,
              // ),
                  child: Icon(Icons.video_call,color: Color(0XFFFFC38C,),size: 64,),
                  // Center(
                  //   child: CircleAvatar(
                  //     radius: 60,
                  //     backgroundImage: AssetImage('assets/images/download.png'),
                  //
                  //   ),
                  ),
                 // SizedBox(height: 2.0,),
                  Text('DeepＥｍｏｔｉｏｎｓシ',style: TextStyle(color:Color(0XFFFFC38C),fontSize: 18,fontWeight: FontWeight.bold))
                ],
              ),

            ),

            ),
            // Container(
            //     padding: EdgeInsets.only(top: 180,),
            //
            //     child: const Text('Powered By Nimz Solutions Ltd.',style: TextStyle(color: Colors.black),))
          ],
        ),
      ),

    );

  }
}