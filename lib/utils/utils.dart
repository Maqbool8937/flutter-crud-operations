import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Utils{

  static void fieldFocus(BuildContext context, FocusNode currentFocus,FocusNode nextFocus){
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }
  static snakBarMessage(BuildContext context,String mesg){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(mesg),
    backgroundColor: Colors.black,

    ));
  }
}