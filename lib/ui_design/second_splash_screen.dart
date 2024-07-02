import 'package:flutter/material.dart';
import 'package:hasseb_project/res/components/round_button.dart';
import 'package:hasseb_project/ui_design/sign_in_screen.dart';
class SecondSplashScreen extends StatelessWidget {
  const SecondSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final color=Color(0XFFFFC38C,);
    final height=MediaQuery.of(context).size.height*1;
    return Scaffold(
      backgroundColor: Color(0xff363333),
      body: SafeArea(
        child: Column(
        //  mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: height*0.2,),
            Center(
              child: Container(
                height: 250,
                  width: 250,
                  child: Image( fit:BoxFit.cover,image: AssetImage('assets/images/download.png'),)),
            ),
            SizedBox(height: height*0.03,),
            Text('Yorem ipsum dolor sit amet,\n consectetur adipiscing elit.',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            SizedBox(height: height*0.03,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: RoundButton(title: 'Get Started', onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>SignInScreen()));
              },color: Color(0XFFFFC38C,)),
            ),
            SizedBox(height: height*0.1,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account ?  ',style: TextStyle(color: Colors.white)),
                InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>SignInScreen()));
                  },
                  child: Text('Sign In',style: TextStyle(color:color,fontWeight: FontWeight.bold),
                  ),
                ),
              ]
            )
            // Text.rich(TextSpan(
            //   children: [
            //     TextSpan(
            //       text: 
            //     ),
            //     TextSpan(
            //       text: 'Sign In',style: TextStyle(color:color,fontWeight: FontWeight.bold )
            //     )
            //   ]
            // ))
          ],
        ),
        
      )
    );
  }
}
