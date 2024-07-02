import 'package:flutter/material.dart';
import 'package:hasseb_project/view_model/services/splash_services.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  SplashServices services=SplashServices();
  @override
  void initState() {
    super.initState();
    services.isLogin(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SafeArea(child: Container(
          padding: EdgeInsets.only(top: 220),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/download.png'),

                ),
              ),
              SizedBox(height: 15.0,),
              Text('Gifts Land',style: TextStyle(color:Colors.black,fontSize: 26,fontWeight: FontWeight.bold))
            ],
          ),

        ),

        ),
        Container(
            padding: EdgeInsets.only(top: 180,),

            child: const Text('Powered By Nimz Solutions Ltd.',style: TextStyle(color: Colors.black),))
      ],
    ),

    );

  }
}
