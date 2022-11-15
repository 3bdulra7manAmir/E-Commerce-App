import 'package:flutter/material.dart';
import 'package:taskn3/pages/login.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return const MaterialApp
    (
      home: Login(), //Temp name untill we create our MainPage or in this case or Login Page
      debugShowCheckedModeBanner: false,
    );
  }
}