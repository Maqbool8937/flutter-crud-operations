import 'package:flutter/material.dart';
class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final  Color color;
  final bool loading;
  const RoundButton({
    super.key,
    required this.title,
      this.color=Colors.red,
    this.loading=false,
    required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: loading?null:onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(),

            color: color
             // color: Color(0XFFFFC38C,)
           // color: Color(0xff615A5A)
          ),
          child: loading?Center(child: CircularProgressIndicator(color: Colors.white,)):
          Center(child: Text(title,style: TextStyle(color: Colors.black),)),
        ),
      ),
    );

  }
}
