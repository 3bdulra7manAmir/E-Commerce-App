import 'package:flutter/material.dart';

import '../shared/custom_textfield.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          //padding of all sides
          padding: const EdgeInsets.all(33.0), //padding value of all edges
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const SizedBox(
                //to push the textfield of the top of the screen
                height: 64,
              ),
              MyTextField(
                textInputTypee: TextInputType.emailAddress,
                isPassword: false,
                hinttextt: "Enter Your Email : ",
              ),

              const SizedBox(
                height: 64,
              ), //to push the textfield of the top of the screen

              MyTextField(
                textInputTypee: TextInputType.text,
                isPassword: true,
                hinttextt: "Enter Your Password : ",),
            ], //Text in!
          ),
        ),
      ),
    );
  }
}
