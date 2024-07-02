import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:hasseb_project/utils/routes/routes_name.dart';
import 'package:hasseb_project/utils/utils.dart';

import '../services/session_manager.dart';

class ForgotPasswordController with ChangeNotifier {

  FirebaseAuth auth = FirebaseAuth.instance;


  bool _loading = false;

  bool get loading => _loading;

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  void forgot(BuildContext context, String email,) async {
    setLoading(true);
    try {
      auth.sendPasswordResetEmail(email: email).
      then((value){

        setLoading(false);
        Utils.snakBarMessage(context, 'Password is successsfully sent to your email');
        Navigator.pushNamed(context, RoutesName.loginScreen);
      }).onError((error,stackTrace){
        setLoading(false);
        Utils.snakBarMessage(context, error.toString());
      });
    } catch (e) {
      setLoading(false);
      Utils.snakBarMessage(context,e.toString());
    }
  }
}