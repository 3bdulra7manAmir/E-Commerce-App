import 'package:flutter/material.dart';

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
            children: [
              const SizedBox(
                //to push the textfield of the top of the screen
                height: 64,
              ),
              TextField(
                  keyboardType: TextInputType
                      .emailAddress, //keyboard type either email or password or date etc
                  obscureText: true, //**** stars password
                  decoration: InputDecoration(
                    hintText: "Enter Your Email : ",
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
                    contentPadding: const EdgeInsets.all(
                        8), //padding inside of the textfiled
                  )),

              const SizedBox(
                height: 64,
              ), //to push the textfield of the top of the screen

              TextField(
                  keyboardType: TextInputType
                      .emailAddress, //keyboard type either email or password or date etc
                  obscureText: true, //**** stars password
                  decoration: InputDecoration(
                    hintText: "Enter Your Password : ",
// To delete borders
                    enabledBorder: OutlineInputBorder(
                      borderSide: Divider.createBorderSide(context),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ), //on click border color
// fillColor: Colors.red,
                    filled: true, //inside color of the text field default color
                    contentPadding: const EdgeInsets.all(
                        8), //padding inside of the textfiled
                  ))
            ], //Text in!
          ),
        ),
      ),
    );
  }
}
