import 'package:flutter/material.dart';
import 'package:validation_wrk/view/login_page/login_page.dart';

void main() {
  runApp(MyApp());
}

String email = "";
String password = "";

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
