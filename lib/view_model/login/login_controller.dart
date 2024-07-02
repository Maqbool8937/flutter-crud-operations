import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:hasseb_project/utils/routes/routes_name.dart';
import 'package:hasseb_project/utils/utils.dart';

import '../services/session_manager.dart';

class LoginController with ChangeNotifier {

  FirebaseAuth auth = FirebaseAuth.instance;


  bool _loading = false;

  bool get loading => _loading;

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  void login(BuildContext context, String email, String password,) async {
    setLoading(true);
    try {
     auth.signInWithEmailAndPassword(email: email, password: password).
     then((value){
       SessionController().userId=value.user!.uid.toString();
       setLoading(false);
       Utils.snakBarMessage(context, 'User created successfuylly');
       Navigator.pushNamed(context, RoutesName.dashboardScreen);
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