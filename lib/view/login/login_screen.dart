import 'package:flutter/material.dart';
import 'package:hasseb_project/res/components/round_button.dart';
import 'package:hasseb_project/res/components/text_input_field.dart';
import 'package:hasseb_project/utils/routes/routes_name.dart';
import 'package:hasseb_project/view_model/login/login_controller.dart';
import 'package:provider/provider.dart';

import '../../utils/utils.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController=TextEditingController();
  final passwordController=TextEditingController();

  final emailFocusNode=FocusNode();
  final passwordFocusNode=FocusNode();
  final _formKey=GlobalKey<FormState>();
 @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context){
    final height=MediaQuery.of(context).size.height*1;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: SingleChildScrollView(
            child: Padding(
              padding:  EdgeInsets.symmetric(vertical:height*0.03),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: height*0.04,),

                 CircleAvatar(
                   radius: 55,
                   backgroundImage: AssetImage('assets/images/download.png'),
                 ),
                  SizedBox(height: height*0.03),
                  Text('Welcome back!',style: TextStyle(fontFamily: 'FontMain',fontSize: 16,fontWeight: FontWeight.bold),),
                  SizedBox(height: height*0.06,),
                  Form(
                      key: _formKey,
                      child: Padding(
                        padding:  EdgeInsets.only(top:height* 0.06,bottom:height*0.01) ,
                        child: Column(
                          children: [
                            InputTextField(
                              myController: emailController,
                              focusNode: emailFocusNode,
                              onfieldSubmittedValues: (value){
                                Utils.fieldFocus(
                                    context,
                                    emailFocusNode,
                                    passwordFocusNode);
                              },
                              onValidator: (value){
                                return value.isEmpty?'enter email':null;
                              },
                              keyBoardType: TextInputType.emailAddress,
                              hint: 'Username/Email',
                              obsecureText: false,
                              color: Colors.white,
                            ),
                            SizedBox(height: height*0.02,),
                            InputTextField(
                              myController: passwordController,
                              focusNode: passwordFocusNode,
                              onfieldSubmittedValues: (value){
                                Utils.fieldFocus(
                                    context,
                                    passwordFocusNode,emailFocusNode
                                    );
                              },
                              onValidator: (value){
                                return value.isEmpty?'enter password':null;
                              },
                              keyBoardType: TextInputType.visiblePassword,
                              hint: 'password',
                              obsecureText: false,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      )),

                          GestureDetector(
                            onTap: (){
                              Navigator.pushNamed(context, RoutesName.forgotPasswordScreen);
                            },
                            child: Align(
                                alignment: Alignment.centerRight,
                                child: Text('Forgot Password?',style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal),)),
                          ),

                  SizedBox(height:60,),
                 ChangeNotifierProvider(
                     create:(_)=> LoginController(),

                 child: Consumer<LoginController>(
                   builder: (context,Provider,child){
                     return RoundButton(title: 'Login',
                         color: const Color(0xff615A5A),
                         onPressed: (){
                       if(_formKey.currentState!.validate()){
                         Provider.login(
                             context,
                             emailController.text,
                             passwordController.text);
                       }

                         },
                         loading: Provider.loading);
                   },
                 )
                 ),
                  SizedBox(height: height*0.01,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Icon(Icons.rectangle_outlined,color: Colors.white),
                     SizedBox(width: 5,),
                     Text('Agree to Terms and Conditions'),
                   ],
                 ),
                  SizedBox(height: height*0.09,),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, RoutesName.signUpScreen);
                    },
                    child: Text.rich(
                        TextSpan(
                            text: "Don't have an account? ",
                            children: [
                              TextSpan(
                                  text: 'Create',
                                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,

                                  )

                              )
                            ]
                        )
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
