import 'package:flutter/material.dart';
import 'package:hasseb_project/res/components/text_input_field.dart';

import '../res/components/round_button.dart';
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final color=Color(0XFFFFC38C,);
    final height=MediaQuery.of(context).size.height*1;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff363333),
        automaticallyImplyLeading: true,
      ),
      backgroundColor: Color(0xff363333),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: height*0.06,),
                Center(child: Text('Create Account',style: TextStyle(color: color,fontWeight: FontWeight.bold,fontSize: 20),)),
                SizedBox(height: height*0.06,),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'user name',
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(Icons.person,color: Colors.white,),
                      border: OutlineInputBorder(
                      )
                  ),
                ),
                SizedBox(height:20),
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
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(Icons.lock_open_outlined,color: Colors.white,),
                      border: OutlineInputBorder(
                      )
                  ),
                ),
                SizedBox(height:20),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(Icons.lock_open_outlined,color: Colors.white,),
                      border: OutlineInputBorder(
                      )
                  ),
                ),
        
                SizedBox(height: height*0.04,),
                RoundButton(title: 'Sign Up', onPressed: (){
        
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
        
        
              ],
            ),
          ),
        ),
      ),
    );
  }
}
