import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextInputType textInputTypee;
  final bool isPassword;
  final String hinttextt;

  MyTextField({
    super.key,
    required this.textInputTypee,
    required this.isPassword,
    required this.hinttextt,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
        keyboardType:
            textInputTypee, //keyboard type either email or password or date etc
        obscureText: isPassword, //**** stars password
        decoration: InputDecoration(
          hintText: hinttextt,
          // To delete borders
          enabledBorder: OutlineInputBorder(
            borderSide: Divider.createBorderSide(context),
          ),
          focusedBorder: const OutlineInputBorder(
            //on click border color
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          // fillColor: Colors.red,
          filled: true, //inside color of the text field default color
          contentPadding:
              const EdgeInsets.all(8), //padding inside of the textfiled
        ));
  }
}
