import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class CustomTextformfield extends StatefulWidget {
  final TextEditingController controller;
  /// will probably change to show modal...
  final String validatorError;
  final String label;
  bool passwordTextFormField = true;
   CustomTextformfield({required this.passwordTextFormField, required this.controller,required this.validatorError, required this.label, });

  @override
  State<CustomTextformfield> createState() => _CustomTextformfieldState();
}

class _CustomTextformfieldState extends State<CustomTextformfield> {
  bool isPasswordVisible =true;
  IconData _obscureTextIcon(){
   return isPasswordVisible? FontAwesomeIcons.eyeSlash:FontAwesomeIcons.eye;
  }

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      controller: widget.controller,
      validator: (value){
        if(value == null || value.isEmpty){
          return widget.validatorError;
        }return null;
      },
 obscureText: widget.passwordTextFormField == true? isPasswordVisible: false,
      decoration: InputDecoration(
        suffixIcon: widget.passwordTextFormField? IconButton(onPressed: (){setState(() {
          isPasswordVisible =!isPasswordVisible;
        });}, icon: Icon(_obscureTextIcon())):null,
          label: Text(widget.label),
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 1.5)),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF2D665F), width: 1.5))),

    );
  }
}
