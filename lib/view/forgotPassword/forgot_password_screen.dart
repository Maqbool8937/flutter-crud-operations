import 'package:flutter/material.dart';
import 'package:hasseb_project/res/components/round_button.dart';
import 'package:hasseb_project/res/components/text_input_field.dart';
import 'package:hasseb_project/utils/routes/routes_name.dart';
import 'package:hasseb_project/view_model/forgotPassword/forgot_password_controller.dart';
import 'package:hasseb_project/view_model/login/login_controller.dart';
import 'package:provider/provider.dart';
class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<ForgotPasswordScreen> {
  final emailController=TextEditingController();


  final emailFocusNode=FocusNode();

  final _formKey=GlobalKey<FormState>();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();


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
                  Text('Forgot Password',style: TextStyle(fontFamily: 'FontMain',fontSize: 16,fontWeight: FontWeight.bold),),
                  SizedBox(height: height*0.03,),
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

                          ],
                        ),
                      )),

                  SizedBox(height:8,),
                  ChangeNotifierProvider(
                      create:(_)=> ForgotPasswordController(),

                      child: Consumer<ForgotPasswordController>(
                        builder: (context,Provider,child){
                          return RoundButton(title: 'Reset Password',
                              color: const Color(0xff615A5A),
                              onPressed: (){
                                if(_formKey.currentState!.validate()){
                                  Provider.forgot(context, emailController.text);
                                }

                              },
                              loading: Provider.loading);
                        },
                      )
                  ),
                  SizedBox(height: height*0.3,),

                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, RoutesName.signUpScreen);
                    },
                    child: Text.rich(
                        TextSpan(
                            text: "I know my password go back to ",
                            children: [
                              TextSpan(
                                  text: 'Login',
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
