import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:hasseb_project/utils/routes/routes_name.dart';
import 'package:hasseb_project/view_model/services/session_manager.dart';
class SplashServices{

  void isLogin(BuildContext context){
    FirebaseAuth auth=FirebaseAuth.instance;
    final user=auth.currentUser;
    if(user!=null) {
      SessionController().userId=user.uid.toString();
      Timer(Duration(seconds:3),()=>Navigator.pushNamed(context,RoutesName.dashboardScreen));
    }else{
      Timer(Duration(seconds:3),()=>Navigator.pushNamed(context,RoutesName.loginScreen));
    }
  }
}