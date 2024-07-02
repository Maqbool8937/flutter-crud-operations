import 'package:flutter/material.dart';
import 'package:hasseb_project/res/components/text_input_field.dart';
import 'package:hasseb_project/ui_design/main_screen.dart';
import 'package:hasseb_project/ui_design/register_screen.dart';

import '../res/components/round_button.dart';
import 'home_screen.dart';
class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    final color=Color(0XFFFFC38C,);
    final height=MediaQuery.of(context).size.height*1;
    return Scaffold(
      backgroundColor: Color(0xff363333),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: height*0.1,),
                Center(child: Text('Sign In',style: TextStyle(color: color,fontWeight: FontWeight.bold,fontSize: 16),)),
                SizedBox(height: height*0.1,),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Your email address',
                    hintStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(Icons.email,color: Colors.white,),
                    border: OutlineInputBorder(
                    )
                  ),
                ),
                SizedBox(height:20),
                TextFormField(
        
                  decoration: InputDecoration(
                      hintText: '***********',
                      suffixIcon: Icon(Icons.password),
                      suffixIconColor: Colors.white,
                      hintStyle: TextStyle(color: Colors.white),
                     // prefixIcon: Icon(Icons.email,color: Colors.white,),
                      border: OutlineInputBorder(
                      )
                  ),
                ),
                SizedBox(height: height*0.03,),
                Row(
                  children: [
                    Icon(Icons.check_box,color: Colors.white,),
                    SizedBox(width: 10,),
                    Text('Remember me',style: TextStyle(color: Colors.white),),
        
                  ],
                ),
                SizedBox(height: height*0.04,),
                RoundButton(title: 'Sign In', onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MainScreen()));
                },color: Color(0XFFFFC38C,)),
                SizedBox(height: height*0.02,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 5,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all()
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text('Or',style: TextStyle(color: Colors.white),),
                    SizedBox(width: 10,),
                    Container(
                      height: 5,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all()
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height*0.03,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
        
                          border: Border.all()
                      ),
                      child:  Icon(Icons.facebook_outlined,color: Colors.white,),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
        
                          border: Border.all()
                      ),
                      child:  Icon(Icons.apple_sharp,color: Colors.white,),
                    ),
                   SizedBox(width: 20,),
                   Container(
                     height: 50,
                     width: 50,
                     decoration: BoxDecoration(
        
                       border: Border.all()
                     ),
                     child:  Icon(Icons.facebook_outlined,color: Colors.white,),
                   )
                  ],
                ),
                SizedBox(height: height*0.07,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("Don't have an account? ",style: TextStyle(color: Colors.white),),
                   InkWell(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
                       },
                       child: Text("Sign Up ",style: TextStyle(color: color),))
                 ],
               )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
