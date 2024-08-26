import 'package:flutter/material.dart';
import 'package:validation_wrk/main.dart';
import 'package:validation_wrk/view/login_page/login_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => LoginPage(),
              ),
              (route) => false,
            );
          },
          icon: Icon(Icons.logout_rounded),
        ),
        title: Text(
          "Welcome $email",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
