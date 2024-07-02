import 'package:flutter/material.dart';
class InputTextField extends StatelessWidget {
  const InputTextField({

    super.key, required this.myController,
    required this.focusNode,
    required this.onfieldSubmittedValues,
    required this.onValidator,
    required this.keyBoardType,
    required this.hint,

    required this.obsecureText,
     this.anable=true,
    this.color=Colors.blue,
     this.autoFocus=false});

  final TextEditingController myController;
  final FocusNode focusNode;
  final Color color;
  final FormFieldSetter onfieldSubmittedValues;
  final FormFieldValidator onValidator;
  final TextInputType keyBoardType;
  final String hint;

  final bool obsecureText;
  final bool anable,autoFocus;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        color: color,
        child: TextFormField(
         controller:  myController,
          focusNode: focusNode,
          obscureText: obsecureText,
          onFieldSubmitted: onfieldSubmittedValues,
          validator: onValidator,
          keyboardType: keyBoardType,

          decoration:InputDecoration(
            hintText: hint,

        contentPadding: EdgeInsets.all(15),
        hintStyle: Theme.of(context).textTheme.bodySmall,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(color: Colors.black,

          ),
        ),
            focusedBorder:  OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide(color: Colors.blue),
          ),
            errorBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(color: Colors.black),
            ),
            enabledBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(color: Colors.blue),
            ),
          ),
        ),
      ),
    );
  }
}
