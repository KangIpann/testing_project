import 'package:flutter/material.dart';
import 'package:sample_slicing/ui/screen/login/signin.dart';
import 'package:sample_slicing/ui/screen/login/signup.dart';
import 'package:sample_slicing/ui/screen/main/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SafeArea(child: Home()),
      home: SafeArea(child: SignUp()),
    );
  }
}


