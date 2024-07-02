import 'package:flutter/material.dart';
import 'package:hasseb_project/res/components/round_button.dart';
import 'package:hasseb_project/res/components/text_input_field.dart';
import 'package:hasseb_project/utils/routes/routes_name.dart';
import 'package:hasseb_project/utils/utils.dart';
import 'package:hasseb_project/view_model/signUp/sign_up_controller.dart';
import 'package:provider/provider.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<SignUpScreen> {
  final nameController=TextEditingController();
  final phoneController=TextEditingController();
  final emailController=TextEditingController();
  final addressController=TextEditingController();
  final passwordController=TextEditingController();
  final confirmpasswordController=TextEditingController();

  final nameFocusNode=FocusNode();
  final phoneFocusNode=FocusNode();
  final emailFocusNode=FocusNode();
  final addressFocusNode=FocusNode();
  final passwordFocusNode=FocusNode();
  final confirmPasswordFocusNode=FocusNode();
  final _formKey=GlobalKey<FormState>();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    addressController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
    nameFocusNode.dispose();
    phoneFocusNode.dispose();
    emailFocusNode.dispose();
    addressFocusNode.dispose();
    passwordFocusNode.dispose();
    confirmPasswordFocusNode.dispose();

  }

  @override
  Widget build(BuildContext context){
    final height=MediaQuery.of(context).size.height*1;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: ChangeNotifierProvider(
            create: (_)=>SignUpController(),
            child: Consumer<SignUpController>(
              builder:(context,Provider,child){
                return SingleChildScrollView(
                  child: Padding(
                    padding:  EdgeInsets.symmetric(vertical:height*0.03),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: height*0.01,),

                        CircleAvatar(
                          radius: 55,
                          backgroundImage: AssetImage('assets/images/download.png'),
                        ),
                        SizedBox(height: height*0.03),
                        Text('Join Us',style: TextStyle(fontFamily: 'FontMain',fontSize: 16,fontWeight: FontWeight.bold),),
                        SizedBox(height: height*0.01,),
                        Form(
                            key: _formKey,
                            child: Padding(
                              padding:  EdgeInsets.only(top:height* 0.01,bottom:height*0.01) ,
                              child: Column(
                                children: [
                                  InputTextField(
                                    myController: nameController,
                                    focusNode: nameFocusNode,
                                    onfieldSubmittedValues: (value){
                                      Utils.fieldFocus(
                                          context,
                                          nameFocusNode,
                                          phoneFocusNode);
                                    },
                                    onValidator: (value){
                                      return value.isEmpty?'enter Full name':null;
                                    },
                                    keyBoardType: TextInputType.emailAddress,
                                    hint: 'Full name',
                                    obsecureText: false,
                                    color: Colors.white,
                                  ),
                                  SizedBox(height: height*0.02,),
                                  InputTextField(
                                    myController: phoneController,
                                    focusNode: phoneFocusNode,
                                    onfieldSubmittedValues: (value){
                                      Utils.fieldFocus(
                                          context,
                                          phoneFocusNode,emailFocusNode);
                                    },
                                    onValidator: (value){
                                      return value.isEmpty?'enter phone':null;
                                    },
                                    keyBoardType: TextInputType.emailAddress,
                                    hint: 'phone No',
                                    obsecureText: false,
                                    color: Colors.white,
                                  ),
                                  SizedBox(height: height*0.02,),
                                  InputTextField(
                                    myController: emailController,
                                    focusNode: emailFocusNode,
                                    onfieldSubmittedValues: (value){
                                      Utils.fieldFocus(
                                          context,
                                      emailFocusNode,addressFocusNode
                                      );
                                    },
                                    onValidator: (value){
                                      return value.isEmpty?'enter email':null;
                                    },
                                    keyBoardType: TextInputType.emailAddress,
                                    hint: 'email',
                                    obsecureText: false,
                                    color: Colors.white,
                                  ),
                                  SizedBox(height: height*0.02,),
                                  InputTextField(
                                    myController: addressController,
                                    focusNode: addressFocusNode,
                                    onfieldSubmittedValues: (value){
                                      Utils.fieldFocus(
                                          context,
                                          addressFocusNode,passwordFocusNode);
                                    },
                                    onValidator: (value){
                                      return value.isEmpty?'enter Address':null;
                                    },
                                    keyBoardType: TextInputType.emailAddress,
                                    hint: 'Address',
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
                                          addressFocusNode,
                                          passwordFocusNode);
                                    },
                                    onValidator: (value){
                                      return value.isEmpty?'enter Password':null;
                                    },
                                    keyBoardType: TextInputType.emailAddress,
                                    hint: 'Password',
                                    obsecureText: false,
                                    color: Colors.white,
                                  ),
                                  SizedBox(height: height*0.02,),
                                  InputTextField(
                                    myController: confirmpasswordController,
                                    focusNode: confirmPasswordFocusNode,
                                    onfieldSubmittedValues: (value){
                                      Utils.fieldFocus(
                                          context,
                                          confirmPasswordFocusNode,nameFocusNode);
                                    },
                                    onValidator: (value){
                                      return value.isEmpty?'enter confirm password':null;
                                    },
                                    keyBoardType: TextInputType.visiblePassword,
                                    hint: 'confirm password',
                                    obsecureText: false,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            )),


                        RoundButton(title: 'SignUp',

                            color: Color(0xff615A5A),
                            onPressed: (){
                          print('tap');
                              if(_formKey.currentState!.validate()){
                             Provider.signUp(context,
                                 nameController.text,
                                 phoneController.text,
                                 addressController.text,
                                 emailController.text,
                                 passwordController.text);
                              }
                            },loading: Provider.loading,

                        ),

                        // SizedBox(height: height*0.01,),
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context,RoutesName.loginScreen);
                          },
                          child: Text.rich(
                              TextSpan(
                                  text: "Already have an account, ",
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
                );
              } ,
            ),
          )
        ),
      ),
    );
  }
}

