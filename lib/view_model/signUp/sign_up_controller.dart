import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:hasseb_project/utils/routes/routes_name.dart';
import 'package:hasseb_project/utils/utils.dart';

import '../services/session_manager.dart';

class SignUpController with ChangeNotifier{

  FirebaseAuth auth=FirebaseAuth.instance;
  FirebaseFirestore firestore=FirebaseFirestore.instance;
  DatabaseReference ref=FirebaseDatabase.instance.ref().child('users');

  bool _loading=false;
  bool get loading=>_loading;

  setLoading(bool value){
    _loading=value;
    notifyListeners();
  }

  void signUp(BuildContext context,String username, String phone,String address,String email, String password,)async{

    setLoading(true);
    try{
      auth.createUserWithEmailAndPassword(
          email: email, password: password).then((value){
        SessionController().userId=value.user!.uid.toString();
        firestore.collection('users').doc(value.user!.uid.toString()).set({
              'uid':value.user!.uid.toString(),
            'email':value.user!.email.toString(),
             // 'password':password,
              'address':address,
              'onlline':'noone',
              'phone':phone,
              'name':username,
          //for storing data on firebase database:
        // ref.child(value.user!.uid.toString()).set({
        //   'uid':value.user!.uid.toString(),
        //   'email':value.user!.email.toString(),
        //   // 'password':password,
        //   'address':address,
        //   'onlline':'noone',
        //   'phone':phone,
        //   'name':username,
        }).then((value){


          setLoading(false);
          Navigator.pushNamed(context, RoutesName.dashboardScreen);
          Utils.snakBarMessage(context, 'user created successfully');
        }).onError((error,stackTrace){
          setLoading(false);
          Utils.snakBarMessage(context, error.toString());
        });
        Utils.snakBarMessage(context, 'user created successfully');
        setLoading(false);
      }).onError((error,stackTrace){
        setLoading(false);
        Utils.snakBarMessage(context, error.toString());
      });

    }
    //     });
    //   firestore.collection('users').doc(value.user!.uid.toString()).set({
    //     'uid':value.user!.uid.toString(),
    //   'email':value.user!.email.toString(),
    //    // 'password':password,
    //     'address':address,
    //     'onlline':'noone',
    //     'phone':phone,
    //     'name':username,
    //
    //   }).then((value){
    //
    //     setLoading(false);
    //     Navigator.pushNamed(context, RoutesName.dashboardScreen);
    //     Utils.snakBarMessage(context, 'user created successfully');
    //   }).onError((error,stackTrace){
    //     setLoading(false);
    //     Utils.snakBarMessage(context, error.toString());
    //   });
    //     Utils.snakBarMessage(context, 'user created successfully');
    //     setLoading(false);
    //   }).onError((error,stackTrace){
    //     setLoading(false);
    //     Utils.snakBarMessage(context, error.toString());
    //   });
    //
    // }
    catch(e){
      setLoading(false);
     Utils.snakBarMessage(context, e.toString());
    }

  }
}